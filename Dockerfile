# 1. השתמש ב־Python 3.10
FROM python:3.10-slim

# 2. הגדר את תיקיית העבודה בתוך הקונטיינר
WORKDIR /app

# 3. העתק את קובץ הדרישות
COPY requirements.txt .

# 4. התקן את הספריות הנדרשות
RUN pip install --no-cache-dir -r requirements.txt

# 5. העתק את שאר קבצי הפרויקט
COPY . .

# 6. הגדר את הפקודה שתופעל כשהקונטיינר יתחיל
CMD ["python", "app.py"]

# 7. האפליקציה עובדת על פורט 5000
EXPOSE 5000

