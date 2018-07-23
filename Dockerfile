FROM mageinferno/magento2-php:7.1-fpm-0

MAINTAINER fubolg <fubolg.ua@gmail.com>
LABEL Vendor="fubolg"
LABEL Description="PHP-FPM v7.1"
LABEL Version="1.0.0"


RUN apt-get install -yqq \
    vim
    