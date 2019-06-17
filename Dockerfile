# builder
FROM golang:1.12.6-alpine3.9 as builder
RUN mkdir /build
ADD ./hello.go /build/
WORKDIR /build
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -ldflags '-extldflags "-static"' -o hello .

# container
FROM scratch
COPY --from=builder /build/hello /app/
WORKDIR /app
CMD ["./hello"]

