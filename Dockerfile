FROM golang:latest

WORKDIR /app

COPY . .

RUN go mod download

RUN go build -o math

# EXPOSE 8080

CMD [ "./math.go" ]