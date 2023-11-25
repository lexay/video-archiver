#!/usr/bin/env bash

printf "%s" "$PLAYLIST" | \
  yt-dlp --format 'bv*[height<=1080]+wa' \
    --output '/home/deploy/videos/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' \
    --limit-rate '5M' \
    --batch -
