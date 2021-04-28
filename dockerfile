
FROM alpine:latest

COPY ./mysqldump /etc/periodic/daily

RUN apk update && \
    apk upgrade && \
    apk add --no-cache mariadb-client && \
    chmod a+x /etc/periodic/daily/*
   
