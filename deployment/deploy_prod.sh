#!/bin/sh

gcloud compute ssh cast-grab <<EOF
  cd django-rest-starter
  git pull
  source /opt/envs/django-rest-starter/bin/activate
  pip install -r requirements.txt
  ./manage.py migrate
  python manage.py runserver 0.0.0.0:5253
  exit
EOF