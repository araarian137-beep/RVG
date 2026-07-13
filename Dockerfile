FROM python:3.10-slim
WORKDIR /app
COPY requirements.txt .
# نصب ابزار gunicorn برای شبیه‌سازی دقیق محیط ریل‌وی
RUN pip install --no-cache-dir -r requirements.txt && pip install uvicorn gunicorn
COPY . .
# اجرای پروژه به شکل اسکریپت کامل همراه با مدیریت پورت رندر
CMD ["gunicorn", "main:app", "-w", "1", "-k", "uvicorn.workers.UvicornWorker", "-b", "0.0.0.0:10000"]
