FROM golang:1.12.6-alpine3.9

ARG workdir=/usr/src/app

WORKDIR $workdir

COPY ../../../.. .

ENV GOPATH=$workdir

