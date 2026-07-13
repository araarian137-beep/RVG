FROM python:3.10-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
# با این دستور پایتون ابتدا لوپ سیستم‌عامل را باز می‌کند و سپس فایل شما را به صورت ایمپورت‌شده اجرا می‌کند
CMD ["python", "-c", "import asyncio; import main; asyncio.get_event_loop().run_forever()"]
