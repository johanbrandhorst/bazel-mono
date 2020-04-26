# Must be built from root of repo
# docker build -f ./Dockerfile ../..
FROM node:alpine as build-env

RUN apk update && apk add python make g++

RUN npm i -g typescript

RUN npm i -g grpc

ADD . /src/

RUN cd /src/ && tsc ./service/node-client/users.ts

ENTRYPOINT ["node", "/src/service/node-client/users.js"]
