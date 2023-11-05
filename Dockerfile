FROM ubuntu:focal
ENV DEBIAN_FRONTEND noninteractive
# Install prerequisites
RUN apt-get update && apt-get install -y \
curl
RUN curl https://get.modular.com | sh - && \
modular auth mut_89caded77b6642088dfb346a64593324
CMD /bin/bash

