FROM golang:alpine
#FROM golang:1.8.5-jessie

# RUN GIT
RUN apk add git


RUN go get github.com/jahangir033003/learn-chaincode

# create a working directory
WORKDIR /go1.8.1/src/docker

# add source code
ADD src src

ENV PORT=3001

# run main.go
CMD ["go", "run", "src/main.go"]

