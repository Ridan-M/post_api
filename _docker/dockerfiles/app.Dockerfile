FROM php:8.2-fpm

RUN apt-get update && apt-get install -y \
    git \
    libpq-dev \
    libpng-dev \
    libzip-dev \
    libsqlite3-dev \
    curl \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install pdo pdo_pgsql pdo_sqlite bcmath gd zip

# Install composer
ENV COMPOSER_ALLOW_SUPERUSER=1
RUN curl -sS https://getcomposer.org/installer | php -- \
    --filename=composer \
    --install-dir=/usr/local/bin

WORKDIR /var/www/laravel
