FROM busybox

ADD index.html /index.html

EXPOSE 80

# Use shell syntax because I'm lazy/ Note that busybox's netcat is different:
# http://www.busybox.net/downloads/BusyBox.html#nc
CMD while true ; do nc -l -p 80 < /index.html ; done
