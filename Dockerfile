FROM python:3.11-slim
ENV PYTHONDONTWRITEBYTECODE=1 ENV PYTHONUNBUFFERED=1
Install ffmpeg and CA certs (apt-get is available on Debian slim)
RUN apt-get update && 
apt-get install -y –no-install-recommends ffmpeg ca-certificates && 
rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY requirements.txt /app/requirements.txt RUN pip install –no-cache-dir -r /app/requirements.txt
COPY app.py /app/app.py
ENV PORT=8080 CMD “uvicorn”, “app:app”, “–host”, “0.0.0.0”, “–port”, “8080”
