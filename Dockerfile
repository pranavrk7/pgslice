FROM ruby:3.2.0-alpine3.17

MAINTAINER Andrew Kane <andrew@ankane.org>

RUN apk add --update build-base libpq-dev && \
    gem install pgslice && \
    apk del build-base && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["pgslice"]
