


# Use the official PHP 8.3 image
FROM dunglas/frankenphp:php8.3

ENV SERVER_NAME=":80"

# Install dependencies
RUN apt-get update && apt-get install -y \
    zip unzip curl libpng-dev libonig-dev libxml2-dev libzip-dev git nodejs npm \
    && docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd zip \
    && docker-php-ext-enable zip

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html


# RUN composer install \
#     && npm install \
#     && npm run build

# EXPOSE 9000
# CMD ["frankenphp", "serve", "--config=/var/www/http/.frankenphp.yml", "--port=9000", "/var/www/http/public/index.php"]

# Menjalankan FrankenPHP dalam mode server
# CMD ["frankenphp", "run", "--port=80", "--root=/var/www/html/public"]