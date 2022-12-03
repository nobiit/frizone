FROM php:7-apache

RUN apt-get -qq update && \
    apt-get -qq install -y sudo curl wget bash git gcc g++ make unzip p7zip openssh-server zlib1g-dev libpng-dev libzip-dev libjpeg-dev libfreetype6-dev zip unzip

RUN curl -sL getcomposer.org/installer | php -- --quiet --install-dir=/usr/local/bin --filename=composer

RUN curl -sL deb.nodesource.com/setup_18.x | bash -s - && \
    apt-get -qq install nodejs

RUN docker-php-ext-install mysqli -j$(nproc)
RUN docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-install gd -j$(nproc)
RUN docker-php-ext-install zip -j$(nproc)
RUN a2enmod rewrite

ENV APACHE_RUN_USER=dyno APACHE_RUN_GROUP=dyno
RUN groupadd --gid 1000 ${APACHE_RUN_GROUP}
RUN useradd --uid 1000 --gid 1000 ${APACHE_RUN_USER}
