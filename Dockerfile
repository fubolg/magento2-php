FROM mageinferno/magento2-php:7.1-fpm-0

MAINTAINER fubolg <fubolg.ua@gmail.com>
LABEL Vendor="fubolg"
LABEL Description="PHP-FPM v7.1"
LABEL Version="1.0.0"

ADD https://www.dotdeb.org/dotdeb.gpg /tmp/dotdeb.gpg

RUN apt-key add /tmp/dotdeb.gpg \
    && echo "deb http://packages.dotdeb.org jessie all" > /etc/apt/sources.list.d/dotdeb.list \
    && echo "deb-src http://packages.dotdeb.org jessie all" >> /etc/apt/sources.list.d/dotdeb.list

RUN apt-get update -y

RUN apt-get install -yqq \
    vim

RUN apt-get install -yqq \
	php7.0-xdebug

RUN rm /etc/php/7.0/mods-available/xdebug.ini \
    && rm /etc/php/7.0/fpm/conf.d/20-xdebug.ini