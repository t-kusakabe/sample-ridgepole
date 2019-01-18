FROM ruby:2.6.0-alpine3.8

ARG APP_ROOT=/sample-ridgepole
WORKDIR $APP_ROOT

RUN apk add --no-cache \
      build-base \
      curl-dev \
      libxml2-dev \
      libxslt-dev \
      linux-headers \
      mysql-dev \
      nodejs \
      ruby-dev \
      tzdata \
      yaml \
      yaml-dev

COPY Gemfile Gemfile.lock ./
RUN gem install bundler && \
    bundle install
