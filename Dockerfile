# Container image that runs your code
FROM ubuntu:latest

# Install dependences
RUN sudo apt update; sudo apt install snap
RUN sudo snap install drawio

# Try
RUN drawio --version

# CMD drawio -h
