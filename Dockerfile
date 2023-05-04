FROM golang:1.19.8-alpine as base

FROM base as dev
    
# RUN curl -sSfL https://raw.githubusercontent.com/cosmtrek/air/master/install.sh | sh -s -- -b $(go env GOPATH)/bin


WORKDIR /opt/app/api   

# RUN go mod init main

# CMD ["air"]
