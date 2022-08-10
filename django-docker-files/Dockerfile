# pull official base image
FROM python:3.9.6-alpine

# set work directory
WORKDIR /usr/src/app
RUN mkdir /usr/src/app/static
RUN mkdir /usr/src/media

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install psycopg2 dependencies
COPY ./requirements.txt /requirements.txt
RUN apk add --update --no-cache --virtual .tmp-build-deps \ 
    postgresql-dev gcc python3-dev musl-dev

RUN pip install --upgrade pip
RUN pip install -r /requirements.txt
RUN apk del .tmp-build-deps

COPY ./entrypoint.sh .
#  RUN sed -i 's/\r$//g' /usr/src/app/entrypoint.sh
RUN chmod +x /usr/src/app/entrypoint.sh

ENTRYPOINT ["sh", "/usr/src/app/entrypoint.sh"]

