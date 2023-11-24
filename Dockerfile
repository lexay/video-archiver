FROM ruby:3.2.2-alpine3.18 AS base

FROM base AS dependencies

COPY Gemfile Gemfile.lock ./
RUN bundle install

FROM base
RUN apk add --no-cache yt-dlp
RUN adduser -D deploy
USER deploy
WORKDIR /home/deploy/app
COPY --from=dependencies /usr/local/bundle/ /usr/local/bundle/
COPY --chown=deploy ./ ./
