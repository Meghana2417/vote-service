FROM python:3.11-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Copy everything in vote/ to /app
COPY . /app

# Upgrade pip
RUN pip install --upgrade pip

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port for Railway
EXPOSE 8000

# Run Django
CMD ["gunicorn", "vote.wsgi", "--bind", "0.0.0.0:8000"]
