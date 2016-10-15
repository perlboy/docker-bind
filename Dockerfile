# Use phusion/baseimage
FROM phusion/baseimage

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

# install bind9
RUN apt-get install bind

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


