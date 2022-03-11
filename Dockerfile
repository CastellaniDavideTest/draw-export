# Container image that runs your code
FROM ubuntu:latest

# Install dependences
RUN apt update; apt install snapd -y
RUN snap install drawio

# Try
RUN drawio --version

# CMD drawio -h
