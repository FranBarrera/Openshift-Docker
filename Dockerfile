FROM debian

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -yq install \
        apache2
ADD index.html /var/www/index.html

EXPOSE 8080

# Use shell syntax because I'm lazy/ Note that busybox's netcat is different:
# http://www.busybox.net/downloads/BusyBox.html#nc
