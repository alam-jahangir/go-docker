
#======================= GO ===================================

# Accept the Go version for the image to be set as a build argument.
# Default to Go 1.11
ARG GO_VERSION=1.11

# First stage: build the executable as version specific.
FROM golang:${GO_VERSION}-alpine AS builder

# Always take latest version of GO
#FROM golang:alpine

# ====== Create a working directory ===========

# Outside $GOPATH
#WORKDIR /src
#WORKDIR $GOPATH
WORKDIR $GOPATH/Go_Docker/src/docker

# Add source code
ADD src src

# Update/Install Git and go get specified dependency
RUN apk update && \
  apk add git && \
  go get github.com/garyburd/redigo/redis && \
  go get github.com/google/codesearch/index

# ======================End GO ================================

# Install the Certificate-Authority certificates for the app to be able to make
# calls to HTTPS endpoints.
# Git is required for fetching the dependencies.
#RUN apk add --no-cache ca-certificates

# Install packages
# --vendor-only is used to restrict dep from scanning source code
# and finding dependencies
#RUN dep ensure --vendor-only

# Fetch dependencies first; they are less susceptible to change on every build
# and will therefore be cached for speeding up the next build
#COPY go.mod .
#COPY go.sum .
#RUN go mod download

# Import the code from the context.
#COPY . .

# Build the source
#RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main src/main.go
 
# Final stage: the running container.
#FROM scratch

# Declare the port on which the webserver will be exposed.
ENV PORT=3001
#EXPOSE 8080

# Copy the binary from builder
#COPY --from=builder $GOPATH/Go_Docker/src/main .

# Run the binary
#CMD ["./main"]

# Run main.go
CMD ["go", "run", "src/main.go"]

