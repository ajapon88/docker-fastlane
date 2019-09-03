FROM ruby:2.6.4-alpine

ARG fastlane_version=2.130.0

WORKDIR /workspace

RUN apk add --no-cache --virtual .ruby-builddeps build-base ruby-dev && \
    gem install fastlane --no-document -v "${fastlane_version}" && \
    apk del .ruby-builddeps

ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8
