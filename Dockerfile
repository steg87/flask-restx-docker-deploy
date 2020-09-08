FROM python:3.8.2-slim

ENV APP_DIR=/usr/src/app
WORKDIR ${APP_DIR}
COPY requirements.txt ${APP_DIR}/
RUN pip3 install -r requirements.txt && pip3 install gunicorn
COPY app.py ${APP_DIR}/