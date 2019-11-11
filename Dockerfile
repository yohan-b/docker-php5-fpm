FROM debian:jessie
MAINTAINER yohan <783b8c87@scimetis.net>
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get -y install php5-fpm php5-gd php5-mysql
COPY php-fpm.conf /etc/php5/fpm/
ENTRYPOINT ["/usr/sbin/php5-fpm", "-F", "--force-stderr", "--fpm-config", "/etc/php5/fpm/php-fpm.conf"]
#ENTRYPOINT ["/bin/bash"]
