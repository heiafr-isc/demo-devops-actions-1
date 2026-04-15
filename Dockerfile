FROM hello-world

FROM golang:1.26 AS builder
WORKDIR /app
COPY go.mod hello-devops.go ./
RUN go build .

FROM alpine:latest  
WORKDIR /root/
COPY --from=builder /app/hello-devops /usr/local/bin/hello-devops
CMD ["/usr/local/bin/hello-devops"]
