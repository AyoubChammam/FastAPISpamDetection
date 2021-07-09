FROM python:3.8-slim-buster

COPY ./app /app/app
COPY ./requirements.txt /app

WORKDIR /app

RUN pip3 install -r requirements.txt

EXPOSE 8000

CMD ["uvicorn, "app.main:app", "--host=0.0.0.0", "--reload"]