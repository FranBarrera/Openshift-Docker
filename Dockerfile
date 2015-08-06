FROM ubuntu:trusty

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -yq install \
        apache2
ADD index.html /var/www/index.html

EXPOSE 8080

ADD run.sh /run.sh
RUN chmod 755 /*.sh
CMD ["/run.sh"]
