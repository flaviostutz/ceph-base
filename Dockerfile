FROM ubuntu:18.04

RUN apt-get update && apt-get install -y wget gnupg lsb-release
RUN wget -q -O- 'https://download.ceph.com/keys/release.asc' | apt-key add -
RUN echo deb https://download.ceph.com/debian-luminous/ $(lsb_release -sc) main | tee /etc/apt/sources.list.d/ceph.list
RUN apt-get update

RUN apt-get install -y ceph
RUN apt-get install -y gettext