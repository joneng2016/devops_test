FROM debian:latest

RUN apt-get update 
RUN apt-get install bash

COPY sources.list /etc/apt/sources.list
COPY start_script.sh /home/start_script.sh

RUN sh /home/start_script.sh