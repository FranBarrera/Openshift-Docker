#!/bin/bash
chown -R www-data:www-data /var/www

source /etc/apache2/envvars
tail -F /var/log/apache2/* &
/usr/sbin/apache2 -D FOREGROUND
