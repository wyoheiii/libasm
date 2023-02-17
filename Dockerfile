FROM debian:buster-slim

RUN apt-get update && apt-get upgrade
RUN apt-get -y install gcc nasm lldb make
