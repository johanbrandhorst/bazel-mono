#! /usr/bin/env bash

set -euo pipefail

echo -e ">>> Symlinking bindata files"
for label in $(bazel query 'kind(bindata, //...)'); do
	package="${label%%:*}"
	package="${package##//}"
	target="${label##*:}"

	# do not continue if the package does not exist
	[[ -d "${package}" ]] || continue

	# compute the path where bazel put the files
	out_path="bazel-bin/${package}/"

	# compute the relative_path to the
	count_paths="$(echo -n "${package}" | tr '/' '\n' | wc -l)"
	relative_path=""
	for i in $(seq 0 ${count_paths}); do
		relative_path="../${relative_path}"
	done

	bazel build "${label}"

	found=0
	for f in ${out_path}/bindata.go; do
		if [[ -f "${f}" ]]; then
			found=1
			ln -nsf "${relative_path}${f}" "${package}/"
		fi
	done
	if [[ "${found}" == "0" ]]; then
		echo "ERR: no bindata.go file was found inside $out_path for the package ${package}"
		exit 1
	fi
done

echo -e ">>> Symlinking gomock files"
for label in $(bazel query 'kind(gomock, //...)'); do
	package="${label%%:*}"
	package="${package##//}"
	target="${label##*:}"

	# do not continue if the package does not exist
	[[ -d "${package}" ]] || continue

	# compute the path where bazel put the files
	out_path="bazel-bin/${package}/"

	# compute the relative_path to the
	count_paths="$(echo -n "${package}" | tr '/' '\n' | wc -l)"
	relative_path=""
	for i in $(seq 0 ${count_paths}); do
		relative_path="../${relative_path}"
	done

	bazel build "${label}"

	found=0
	for f in ${out_path}/mocks_test.go; do
		if [[ -f "${f}" ]]; then
			found=1
			ln -nsf "${relative_path}${f}" "${package}/"
		fi
	done
	if [[ "${found}" == "0" ]]; then
		echo "ERR: no mocks_test.go file was found inside $out_path for the package ${package}"
		exit 1
	fi
done
