FROM python:3.6.4-slim

ENV PYTHONUNBUFFERED 1

# Create working directory
RUN mkdir /app
WORKDIR /app

# Copy everything from current folder to /app
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt
