#!/bin/bash


APP_ENV=${APP_ENV}
APP_PATH=${APP_PATH}

python $APP_PATH/src/./manage.py migrate
python $APP_PATH/src/./manage.py loaddata seeder

if [ $APP_ENV = "PRODUCTION" ] ; then
	echo PRODUCTION
else
	echo Starting development server...
	exec python $APP_PATH/src/./manage.py runserver 0.0.0.0:8000
fi
