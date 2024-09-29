FROM golang:latest AS builder

WORKDIR /usr/src/app
COPY hellofc.go .

RUN go mod init wesleyribas/hellofc
RUN go build

CMD [ "./hellofc" ]