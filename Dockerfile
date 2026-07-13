FROM python:3.10-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
# با دستور زیر ابتدا لوپ اصلی پایتون در حافظه ساخته می‌شود و سپس کدهای شما را اجرا می‌کند
CMD ["python", "-c", "import asyncio; loop = asyncio.new_event_loop(); asyncio.set_event_loop(loop); import main"]
