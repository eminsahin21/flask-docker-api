# 1. Python base image
FROM python:3.9

# 2. Ortam değişkenleri
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# 3. Çalışma dizini
WORKDIR /app

# 4. Bağımlılıkları kopyala ve yükle
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 5. Uygulama dosyalarını kopyala
COPY . .

# 6. Flask portu
EXPOSE 5000

# 7. Uygulamayı çalıştır
CMD ["python", "main.py"]
