FROM python:3.11-slim-buster

WORKDIR /app

COPY wymagania.txt wymagania.txt
RUN pip install -r wymagania.txt
COPY app.py .

ENV FLASK_APP=app
EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]