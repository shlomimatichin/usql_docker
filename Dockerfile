FROM golang:1.13-alpine AS build
RUN apk add --no-cache git alpine-sdk
RUN go get -u github.com/xo/usql

FROM alpine
COPY --from=build /go/bin/usql /bin/usql
