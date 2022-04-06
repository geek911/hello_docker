# syntax=docker/dockerfile:1
FROM python:3.6-alpine
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /source/hello_docker
RUN pip install --upgrade pip
COPY ./requirements.txt /source/hello_docker
RUN pip install -r requirements.txt
COPY . /source/hello_docker
CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000"]
