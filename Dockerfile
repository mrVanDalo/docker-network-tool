FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
  telnet \
  inetutils-ping \
  netcat \
  nmap \
  dnsutils



