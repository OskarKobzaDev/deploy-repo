#!/bin/bash
set -e

echo "Tworzę .env na podstawie .env.example..."
cp .env.example .env

echo "Podmieniam zmienne środowiskowe..."

sed -i "s|DB_PASSWORD=.*|DB_PASSWORD=${DB_PASSWORD}|" .env
sed -i "s|REDIS_PASSWORD=.*|REDIS_PASSWORD=${REDIS_PASSWORD}|" .env
sed -i "s|MAIL_PASSWORD=.*|MAIL_PASSWORD=${MAIL_PASSWORD}|" .env

echo ".env gotowy."