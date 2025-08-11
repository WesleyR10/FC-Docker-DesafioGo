FROM golang:1.25rc3 AS builder

WORKDIR /usr/src/app
COPY hellofc.go .

RUN go mod init wesleyribas/hellofc
RUN go build

CMD [ "./hellofc" ]