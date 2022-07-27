FROM golang:alpine3.15 as builder

WORKDIR /app

COPY go.mod ./

RUN go mod download

COPY *.go ./

RUN go build -o /helloapp


FROM alpine:3.15.0

WORKDIR /
COPY --from=builder /helloapp /helloapp

EXPOSE 8080
ENTRYPOINT ["/helloapp"]
