from ubuntu:trusty
MAINTAINER bunta.fujikawa

# これだけやっても意味がないけど、このように環境のセットアップをしていく
RUN apt-get update && \
    apt-get -y install \
                git \
                zlib1g-dev
