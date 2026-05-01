#!/bin/sh
set -e

php artisan config:clear
php artisan cache:clear
php artisan view:clear

php artisan migrate --force

exec "$@"
