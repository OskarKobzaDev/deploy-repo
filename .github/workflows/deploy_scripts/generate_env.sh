#!/bin/bash
set -e

echo "Podmieniam zmienne środowiskowe..."

sed -i "s|DB_PASSWORD=.*|MYSQL_PASSWORD=${MYSQL_PASSWORD}|" .env
sed -i "s|REDIS_PASSWORD=.*|REDIS_PASSWORD=${REDIS_PASSWORD}|" .env
sed -i "s|MAIL_PASSWORD=.*|MAIL_PASSWORD=${MAIL_PASSWORD}|" .env

echo ".env gotowy."