FROM rattydave/docker-ubuntu-xrdp-mate-custom:latest
MAINTAINER Don Matteo <think@unblog.ch>
RUN ln -sf /bin/bash /bin/sh
RUN curl -O https://think.unblog.ch/arch/code_1.18.1-1510857349_amd64.deb
RUN apt-get update && apt-get install -y \
	gconf-service \
	gconf-service-backend \
	gconf2-common libgconf-2-4
RUN dpkg -i code_1.18.1-1510857349_amd64.deb
EXPOSE 3389
EXPOSE 2222
