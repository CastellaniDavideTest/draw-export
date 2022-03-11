# Container image that runs your code
FROM ubuntu:latest

# Install dependences
RUN apt update; apt install snap
RUN snap install drawio

# Try
RUN drawio --version

# CMD drawio -h
