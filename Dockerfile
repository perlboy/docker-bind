# Use phusion/baseimage
FROM phusion/baseimage:0.9.19

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

# apparently we can't assume apt is up to date
RUN apt-get update

# install bind9
RUN apt-get -y install bind9

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# We expose port 53
EXPOSE 53

