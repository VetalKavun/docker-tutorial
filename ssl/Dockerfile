FROM centos:7

RUN yum -y install \
	httpd \
	php \
	php-mysqlnd \
	mod_ssl \
	openssl

COPY html-ssl /var/www/html

COPY server.crt /server.crt

COPY server.key /server.key

COPY ssl.con /etc/httpd/conf.d/default.conf

RUN echo "<?php phpinfo(); ?>" > /var/www/html/test.php


CMD apachectl -DFOREGROUND
