FROM golang:1.18.8-alpine3.16 AS buildStage

WORKDIR /usr/src/app

COPY . .

RUN go mod download

RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-s -w" -a -installsuffix cgo -o app .


FROM scratch

COPY --from=buildStage /usr/src/app/app /

USER 1000:1000

ENTRYPOINT ["/app"]
