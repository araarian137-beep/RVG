FROM python:3.10-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
# تغییر اصلی اینجاست: اجرای پروژه به صورت ماژول برای حل خطای وارد کردن چرخه‌ای
CMD ["python", "-m", "main"]
