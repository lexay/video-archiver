FROM alpine:3.18 AS base

RUN apk add --no-cache yt-dlp
RUN adduser -D deploy
USER deploy
WORKDIR /home/deploy/app
COPY --chown=deploy ./ ./
