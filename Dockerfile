# 1️⃣ Use lightweight Python base image
FROM python:3.10-slim

# 2️⃣ Set working directory inside container
WORKDIR /app

# 3️⃣ Copy dependency file first (layer caching)
COPY requirements.txt .

# 4️⃣ Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5️⃣ Copy application code
COPY application/app.py .

# 6️⃣ Expose application port
EXPOSE 5001

# 7️⃣ Run the app
CMD ["python", "app.py"]