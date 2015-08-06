FROM busybox

ADD index.html /index.html

EXPOSE 8080

# Use shell syntax because I'm lazy/ Note that busybox's netcat is different:
# http://www.busybox.net/downloads/BusyBox.html#nc
CMD while true ; do nc -l -p 8080 < /index.html ; done
