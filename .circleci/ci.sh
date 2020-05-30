#!/usr/bin/env bash
#
# Copyright 2015 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -eEuo pipefail

COMMIT_RANGE=${COMMIT_RANGE:-$(git merge-base origin/master HEAD)".."}

function changed_packages() {
    echo "Commit range: ${COMMIT_RANGE}" >&2

    # Go to the root of the repo
    cd "$(git rev-parse --show-toplevel)"

    mapfile -t changed_files < <( git diff --name-only "${COMMIT_RANGE}" )
    echo "Changed files: ${changed_files[*]}" >&2

    # Get a list of the changed files in package form by querying Bazel.
    packages=()
    for file in "${changed_files[@]}"; do
        mapfile -t -O "${#packages[@]}" packages < <( bazel query --keep_going --noshow_progress "$file" )
    done

    echo "Affected packages:  ${packages[*]}" >&2

    # echo the packages as return value
    echo "${packages[@]}"
}

function build_binaries() {
    mapfile -t packages < <( changed_packages )

    # Query for any binaries that depend on the packages
    mapfile -t binaries < <( bazel query --keep_going --noshow_progress "kind(.*_binary, rdeps(//..., set(${packages[*]})))" )
    if [[ ${#binaries[@]} != 0 ]]; then
        echo "Building binaries: ${binaries[*]}"
        bazel test "${binaries[@]}"
    fi
}

function run_tests() {
    mapfile -t packages < <( changed_packages )

    # Query for any tests that depend on the packages
    mapfile -t tests < <( bazel query --keep_going --noshow_progress "kind(test, rdeps(//..., set(${packages[*]})))" )
    if [[ ${#tests[@]} != 0 ]]; then
        echo "Running tests: ${tests[*]}"
        bazel test "${tests[@]}"
    fi
}

function publish_containers() {
    mapfile -t packages < <( changed_packages )

    # Query for any containers that depend on the packages
    mapfile -t containers < <( bazel query --keep_going --noshow_progress "kind(container_push, rdeps(//..., set(${packages[*]})))" )
    if [[ ${#containers[@]} != 0 ]]; then
        echo "Publishing containers: ${containers[*]}"
        bazel run "${containers[@]}"
    fi
}


# help prints help.
function help() {
  echo 1>&2 "Usage: ci.sh <command>"
  echo 1>&2 ""
  echo 1>&2 "Commands:"
  echo 1>&2 "  build         builds binaries affected by local changes"
  echo 1>&2 "  test          runs tests affected by local changes"
  echo 1>&2 "  publish       publishes containers affected by local changes"
}

SUBCOMMAND="${1:-}"
case "${SUBCOMMAND}" in
  "" | "help" | "-h" | "--help" )
    help
    ;;

  "build" )
    shift
    build_binaries
    ;;

  "test" )
    shift
    run_tests
    ;;

  "publish" )
    shift
    publish_containers
    ;;


  *)
    help
    exit 1
    ;;
esac
