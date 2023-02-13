#!/bin/sh

python manage.py makemigrations
python manage.py migrate --no-input
python manage.py collectstatic --no-input

gunicorn django_minio_docker_compose.wsgi:application --bind 0.0.0.0:8000