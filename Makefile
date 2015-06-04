DOCKER_NAMESPACE =	dumdidum/image-app-plex
NAME =			scw-app-plex
VERSION =		0.0.1
VERSION_ALIASES =	0.0.1 latest
TITLE =			Pley Media Server Image
DESCRIPTION =		Plex Media Server with SFTP access
SOURCE_URL =		https://github.com/coolya/image-app-plex


## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/scw-builder | bash
-include docker-rules.mk
## Below you can add custom Makefile commands and overrides