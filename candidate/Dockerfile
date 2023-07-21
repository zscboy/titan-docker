FROM golang:1.19

WORKDIR /candidate

COPY titan/go.mod titan/go.sum ./

RUN go mod download

COPY titan/ .

# when compiling with dynamic link function，don't rely on GLIBC
ENV CGO_ENABLED 0

RUN go build -o titan-candidate ./cmd/titan-candidate

FROM alpine:3.17.0

WORKDIR /edge
COPY --from=0 /candidate/titan-candidate ./titan-candidate
COPY ../../start.sh .

# host address and port the edge api will listen on
EXPOSE 2345

ENTRYPOINT ["./start.sh"]