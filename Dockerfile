FROM golang:1.6

RUN  go get github.com/golang/lint/golint \
  && curl -Lo /tmp/glide.tgz https://github.com/Masterminds/glide/releases/download/v0.12.3/glide-v0.12.3-linux-amd64.tar.gz \
  && tar -C /usr/bin -xzf /tmp/glide.tgz --strip=1 linux-amd64/glide


ENV CGO_ENABLED 0
ENV GO15VENDOREXPERIMENT 1
ENV GOEXPERIMENT framepointer
ENV GOPATH /go:/cp
