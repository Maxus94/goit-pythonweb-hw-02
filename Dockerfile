FROM python:3.10

ENV APP_DIR /app

WORKDIR $APP_DIR

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

ENTRYPOINT ["python", "main.py"] 