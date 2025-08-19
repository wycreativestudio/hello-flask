# Gunakan image Python slim
FROM python:3.11-slim

# Set working directory di container
WORKDIR /app

# Copy dan install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy semua file aplikasi
COPY . .

# Jalankan Flask pakai Gunicorn (lebih stabil di container)
# Bind ke port 8000
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "app:app"]
