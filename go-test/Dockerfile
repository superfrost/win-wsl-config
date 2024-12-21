FROM golang:1.23.4 AS build

WORKDIR /app

COPY . .

RUN go build .


FROM alpine:3.21.0

WORKDIR /app

COPY --from=build /app/hello /app/hello

ENTRYPOINT ["sh", "-c", "./hello"]