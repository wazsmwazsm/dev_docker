FROM php:5.6-fpm

RUN apt update \
	&& apt install zlib1g.dev \
	&& docker-php-ext-install pdo_mysql mysql \
	&& mkdir -p /usr/src/php/ext/redis \
    && curl -L https://github.com/phpredis/phpredis/archive/3.1.6.tar.gz | tar xvz -C /usr/src/php/ext/redis --strip 1 \
    && echo 'redis' >> /usr/src/php-available-exts \
    && docker-php-ext-install redis \
    && mkdir /usr/src/php/ext/memcache \
    && curl -L https://pecl.php.net/get/memcache-2.2.7.tgz | tar xvz -C /usr/src/php/ext/memcache --strip 1 \
    && echo 'memcache' >> /usr/src/php-available-exts \
    && docker-php-ext-install memcache \