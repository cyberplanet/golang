FROM golang:1.6-alpine

RUN mkdir -p $GOPATH/src/golang/helloworld
ADD . $GOPATH/src/golang/helloworld

WORKDIR $GOPATH/src/golang/helloworld
RUN go build -o $GOPATH/bin/helloworld .

EXPOSE 80

CMD ["helloworld"]
