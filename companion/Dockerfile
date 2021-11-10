FROM alpine:3.13.6

RUN apk add git

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]