FROM php:7.3-fpm
RUN echo "deb http://mirrors.aliyun.com/debian bullseye main" >/etc/apt/sources.list \
 && echo "deb http://mirrors.aliyun.com/debian-security bullseye-security main" >>/etc/apt/sources.list \
 && echo "deb http://mirrors.aliyun.com/debian bullseye-updates main" >>/etc/apt/sources.list \
 && docker-php-ext-install mysqli \
 && apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
 && docker-php-ext-configure gd --with-freetype-dir=/usr --with-jpeg-dir=/usr --with-png-dir=/usr \
 && docker-php-ext-install -j$(nproc) gd \
 && pecl install -o -f redis \
 && rm -rf /tmp/pear \
 && docker-php-ext-enable redis


