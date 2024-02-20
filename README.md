### Description

Just portable video playlist downloader on `docker` using `yt-dlp` under the
hood.

### Environment variables

`DOWNLOAD` - HOST path to the directory, which will be mounted to the docker
container for saving downloaded videos.

`RATE_LIMIT` - rate at which `yt-dlp` will be downloading videos(1/2 of your max is recommeded).

`PLAYLIST` - CONTAINER path to the playlist file in the mounted directory
(`/home/deploy/videos/.playlist` by default).

`FORMAT` - video format selection.

### Playlist format

Each url should be on a new line. Lines with "#", ";" or "]" are comments and
ignored.

### How to automate

Use `cronjobs`.
