#!/bin/bash
cd /app
celery -A worker worker -l info -b $BACKEND_SETTING