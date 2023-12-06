### Description

Just portable video playlist downloader on `docker` using `yt-dlp` under the
hood.

### Environment variables

`TARGET_DIR` - path to the host directory, which will be mounted to the docker
container for saving downloaded videos.

`PLAYLIST` - path to the playlist file that SHOULD be in the
mounted directory.

`LIMIT_RATE` - rate at which `yt-dlp` will be downloading videos(1/2 of your max is recommeded).

### Playlist format

Each url should be on a new line. Lines with "#", ";" or "]" are comments and
ignored.
