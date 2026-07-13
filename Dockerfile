FROM python:3.10-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
# با این دستور پایتون را مجبور می‌کنیم ماژول asyncio را به صورت خودکار مدیریت کند
CMD ["python", "-m", "asyncio", "main.py"]
