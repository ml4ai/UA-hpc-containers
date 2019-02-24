FROM ubuntu:18.04

RUN apt-get -q update
RUN apt-get -y install cmake time

ADD trunk /trunk
COPY w2v.sh /
WORKDIR /trunk
RUN mkdir /data

RUN make word2vec
WORKDIR /
