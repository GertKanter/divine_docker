FROM ubuntu:bionic
MAINTAINER gert.kanter@ttu.ee
RUN apt-get update && \
    apt-get install -y wget make cmake && \
    apt-get install -y libxml2-dev libboost-all-dev && \
    cd /root && \
# https://divine.fi.muni.cz/download/
    wget -O divine.tar.gz https://divine.fi.muni.cz/download/divine-3.x/divine-3.3.3.tar.gz && \
    tar -xzf divine.tar.gz && \
    rm -rf divine.tar.gz && \
    cd divine-3.3.3 && \
    ./configure && \
# make sure GEN_TIMED option is ON
    make && \
    make install
