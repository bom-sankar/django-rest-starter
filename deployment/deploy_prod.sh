#!/bin/sh

ssh root@35.189.87.180 <<EOF
  cd django-rest-starter
  git pull
  source /opt/envs/django-rest-starter/bin/activate
  pip install -r requirements.txt
  ./manage.py migrate
  python manage.py runserver 0.0.0.0:
  exit
EOF