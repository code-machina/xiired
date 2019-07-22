#!/bin/bash
echo "CHECK STATUS"
# echo 'Current Working Directory : ${pwd} ${PROJECT_NAME}'
python ./manage.py migrate

echo "BACKEND SETTING $BACKEND_SETTING $CELERY_BROKER_URL"

celery -A xii beat -l info --scheduler django_celery_beat.schedulers:DatabaseScheduler &

celery -A xii flower --port=5555 -b $BACKEND_SETTING &

python ./manage.py runserver 0.0.0.0:8282
