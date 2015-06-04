## -*- docker-image-name: "armbuild/scw-app-kolab:latest" -*-
FROM armbuild/scw-distrib-debian:jessie
MAINTAINER Scaleway <kolja.dummann@logv.ws> (@dumdidum)

# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter

ADD ./patches/ /

RUN apt-get update && apt-get install apt-transport-https -y --force-yes

RUN echo "deb https://dev2day.de/pms/ jessie main" > /etc/apt/sources.list.d/pms.list

RUN  wget -O - https://dev2day.de/pms/dev2day-pms.gpg.key | apt-key add -

# Install packages
RUN apt-get -q update                   \
 && apt-get --force-yes -y -qq upgrade
 RUN  apt-get --force-yes install -y -q   \
	plexmediaserver \
	vsftpd \
	nginx

# Clean rootfs from image-builder

RUN /usr/local/sbin/builder-leave
