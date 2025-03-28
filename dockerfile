# Image with all dependencies for AGAT
FROM ubuntu:latest

# Needed to avoid to be stuck when installing r-base
ENV DEBIAN_FRONTEND noninteractive

RUN  apt-get update

RUN apt-get -y install libdb-dev

RUN apt-get -y install r-base

# Perl dependencies
RUN apt-get -y install libbio-perl-perl libclone-perl libgraph-perl liblwp-useragent-determined-perl libstatistics-r-perl libcarp-clan-perl libsort-naturally-perl libfile-share-perl libfile-sharedir-install-perl libyaml-perl liblwp-protocol-https-perl libfile-sharedir-perl libmoose-perl libterm-progressbar-perl libdevel-cover-perl

# add cpan in case we need to install extra module for test
#RUN apt-get -y install cpanminus

# add git in case we need to make some debug
#RUN apt-get -y install git

# add a text editor in case we need to we need to make some debug
#RUN apt-get -y install nano



# Install last version of AGAT (master branch)
#RUN  cd /opt \
#   && git clone https://github.com/NBISweden/AGAT.git \
#   && cd AGAT \
#   && perl Makefile.PL \
#   && make \
#   && make test \
#   && make install \