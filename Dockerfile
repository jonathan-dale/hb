# Use an official Python base image
FROM python:alpine3.16

WORKDIR /app
RUN pip install --no-cache-dir flask

COPY main.py .
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["python", "main.py"]
