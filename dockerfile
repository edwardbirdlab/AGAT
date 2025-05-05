# Image with all dependencies for AGAT
FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    libdb-dev \
    r-base \
    libbio-perl-perl \
    libclone-perl \
    libgraph-perl \
    liblwp-useragent-determined-perl \
    libstatistics-r-perl \
    libcarp-clan-perl \
    libsort-naturally-perl \
    libfile-share-perl \
    libfile-sharedir-install-perl \
    libyaml-perl \
    liblwp-protocol-https-perl \
    libfile-sharedir-perl \
    libmoose-perl \
    libterm-progressbar-perl \
    libdevel-cover-perl \
    build-essential \
    perl \
    git

COPY . /opt/AGAT

RUN cd /opt/AGAT && \
    perl Makefile.PL && \
    make && \
    make install
