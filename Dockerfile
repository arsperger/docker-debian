FROM debian:stretch
LABEL maintainer="Arsen Semenov <arsperger@gmail.com>" \
      org.label-schema.docker.dockerfile="/Dockerfile" \
      org.label-schema.license="MIT" \
      org.label-schema.name="Node / Debian" \
      org.label-schema.vcs-type="Git" \
      org.label-schema.vcs-url="https://github.com/arsperger/docker-debian"

RUN echo 'APT::Install-Recommends 0;' >> /etc/apt/apt.conf.d/01norecommends \
 && echo 'APT::Install-Suggests 0;' >> /etc/apt/apt.conf.d/01norecommends \
 && apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y vim.tiny wget sudo net-tools ca-certificates unzip apt-transport-https ngrep sipsak \
 && rm -rf /var/lib/apt/lists/*
