FROM python:3.8-slim-buster

COPY ./ /

RUN pip3 install -r requirements.txt

WORKDIR /app

CMD [ "python3", "-m" , "fastapi", "run", "--host=0.0.0.0"]


FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7

COPY ./app /app