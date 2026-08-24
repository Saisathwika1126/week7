From python:3.9-slim-buster
WORKDIR /app
COPY . /app
Run pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]