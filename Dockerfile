# Gunakan Python 3.11 slim
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements dan install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy semua file project
COPY . .

# Expose port yang digunakan Easypanel
EXPOSE 8080

# Jalankan server pakai gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:app"]
