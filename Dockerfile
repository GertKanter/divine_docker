FROM ubuntu:xenial
MAINTAINER gert.kanter@ttu.ee
RUN apt-get update && \
    apt-get install -y wget make && \
    cd /root && \
    wget -O divine.tar.gz https://divine.fi.muni.cz/download/divine-4.0.3.tar.gz && \
    tar -xzf divine.tar.gz && \
    cd divine-4.0.3 && \
    make prerequisites && \
    make
