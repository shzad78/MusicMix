FROM golang

ADD ./server /go/src/github.com/shzad78/musicmix/server
ADD ./server/config/index.html /go/src/github.com/shzad78/musicmix/server/public/index.html
WORKDIR /go/src/github.com/shzad78/musicmix/server
RUN go get ./...
RUN go install github.com/shzad78/musicmix/server

EXPOSE 8081
ENTRYPOINT /go/bin/server
