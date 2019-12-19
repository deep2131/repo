pwd
ls -ltr /home/ec2-user

tar xvf /home/ec2-user/artifact.tar -C /home/ec2-user

gunicorn -e FLASK_APP_HOME=$FLASK_APP_HOME -e LD_LIBRARY_PATH=$LD_LIBRARY_PATH -e LOCAL_CM_DIR=$LOCAL_CM_DIR -e FLASK_ENV=PROD --timeout 30 --graceful-timeout 20 --workers 3 --bind 0.0.0.0:8000 wsgi:app
