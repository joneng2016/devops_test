FROM debian:latest

RUN apt-get update 
RUN apt-get install bash
COPY /storage/sources.list /home/sources.list
