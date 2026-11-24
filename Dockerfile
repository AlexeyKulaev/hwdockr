FROM python:3.13-slim
WORKDIR /app
COPY app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY app/app.py .
STOPSIGNAL SIGINT
CMD ["python", "app.py"]
