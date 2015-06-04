DOCKER_NAMESPACE =	dumdidum/image-app-plex
NAME =			scw-app-plex
VERSION =		0.0.1
VERSION_ALIASES =	0.0.1 latest
TITLE =			Plex Media Server
DESCRIPTION =		Plex Media Server with SFTP access
SOURCE_URL =		https://github.com/coolya/image-app-plex
IMAGE_VOLUME_SIZE =	150G


## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - https://raw.githubusercontent.com/scaleway/image-tools/master/builder/docker-rules.mk | bash
-include docker-rules.mk
## Below you can add custom Makefile commands and overrides