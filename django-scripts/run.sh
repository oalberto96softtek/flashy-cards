#!/bin/bash


APP_ENV=${APP_ENV}
APP_PATH=${APP_PATH}

python $APP_PATH/src/./manage.py migrate
python $APP_PATH/src/./manage.py loaddata seeder

if [ $APP_ENV = "production" ] ; then
	echo Starting production server...
	exec uwsgi --http :8000 --chdir $APP_PATH/src --module flashy_cards.wsgi --processes 5 --threads 2 --stats 127.0.0.1:9191 
else
	echo Starting development server...
	exec python $APP_PATH/src/./manage.py runserver 0.0.0.0:8000
fi
