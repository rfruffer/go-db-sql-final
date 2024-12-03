FROM golang:1.21.0

WORKDIR /usr/src/app

COPY . .

RUN go mod tidy

RUN go build -o app .

CMD ["./app"]
