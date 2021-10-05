FROM golang:1.17.1-alpine as build

WORKDIR /app/desafio-golang

COPY . .

RUN go build -o ./out/golang-hello .

FROM scratch

COPY --from=build /app/desafio-golang/out/golang-hello /app/golang-hello

CMD ["/app/golang-hello"]