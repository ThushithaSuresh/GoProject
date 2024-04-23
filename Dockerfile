FROM golang:1.22.2
RUN mkdir /app
ADD . /app
WORKDIR /app

# COPY go.mod .
# COPY main.go .

RUN go build -o main .

CMD [ "/app/main" ]