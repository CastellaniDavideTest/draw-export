# Container image that runs your code
FROM ubuntu:latest

# Install dependences
RUN apt-get update
RUN apt-get install -y snapd
RUN systemctl enable snapd
RUN snap install drawio

# Try
RUN drawio --version

# CMD drawio -h
