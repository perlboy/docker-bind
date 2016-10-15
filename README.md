# docker-bind
Docker image for ISC Bind 9

This uses Phusion's baseimage available from: [http://phusion.github.io/baseimage-docker/]

This supplies us with a working cron should you also wish to load configs

On it's own this image will simply give you a recursive DNS server.

In my case I am bind-mounting /etc/bind9 within the container to my local host path with configs. 

This image is deliberately generic and it's main purpose is to provide a container based isolation of a Bind daemon.

