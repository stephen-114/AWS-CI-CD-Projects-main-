FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --upgrade pip
RUN pip install --default-timeout=1000 -r requirements.txt

COPY . .

EXPOSE 8080

CMD ["python", "app.py"]