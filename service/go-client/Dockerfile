# Must be built from root of repo
# docker build -f ./Dockerfile ../..
FROM golang:1.14 as build-env

ADD . /src/

ENV CGO_ENABLED=0

RUN cd /src/ && go build -o /app ./service/go-client/main.go

FROM scratch

COPY --from=build-env /app /app

ENTRYPOINT ["/app"]
