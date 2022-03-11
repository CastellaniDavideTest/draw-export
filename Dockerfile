# Container image that runs your code
FROM ubuntu:latest

# Install dependences
ENV container docker
ENV PATH /snap/bin:$PATH
ADD snap /usr/local/bin/snap
RUN apt-get update
RUN apt-get install -y snapd squashfuse fuse
RUN systemctl enable snapd
STOPSIGNAL SIGRTMIN+3

# Try
RUN drawio --version

# CMD drawio -h
