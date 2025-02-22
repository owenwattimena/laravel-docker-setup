


# Use the official PHP 8.1 image
FROM php:8.1-fpm

# Install dependencies
RUN apt-get update && apt-get install -y \
    zip unzip curl libpng-dev libonig-dev libxml2-dev libzip-dev git nodejs npm \
    && docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd zip

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html


# RUN composer install \
#     && npm install \
#     && npm run build

EXPOSE 9000
CMD ["php-fpm"]
