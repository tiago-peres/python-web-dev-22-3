#!/usr/bin/env sh

PG_DB=webdev22videos3
PG_PASSWORD=`head -c 18 /dev/urandom | base64 | tr -dc 'a-zA-Z0-9' | head -c 12`
PG_SERVICE_NAME=postgres
PG_USER=webdev22videos3_user

echo "POSTGRES_DB=$PG_DB
POSTGRES_PASSWORD=$PG_PASSWORD
POSTGRES_USER=$PG_USER
DATABASE_URL=postgres://$PG_USER:$PG_PASSWORD@$PG_SERVICE_NAME:5432/$PG_DB
MEMCACHE_URL=pymemcache://memcached:11211
CELERY_BROKER_URL=redis://redis:6379/0
CELERY_FLOWER_USER=pywebdev
CELERY_FLOWER_PASSWORD=pywebdev
SECRET_KEY=`head -c 75 /dev/urandom | base64 | tr -dc 'a-zA-Z0-9' | head -c 50`" > .docker-env
