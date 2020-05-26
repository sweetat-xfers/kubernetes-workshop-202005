FROM python:3.8

WORKDIR /app

EXPOSE 8000

COPY . /app

RUN pip install --upgrade pip \
  && pip install django mysqlclient \
  && curl -o /usr/local/bin/wait-for-it \
    https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh \
  && chmod 755 /usr/local/bin/wait-for-it

CMD /usr/local/bin/wait-for-it mysql:3306 -- \
  python manage.py runserver 0.0.0.0:8000