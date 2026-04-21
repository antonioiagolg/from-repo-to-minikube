FROM python:alpine

WORKDIR /usr/src/app

COPY ./src/ .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "main:app"]

