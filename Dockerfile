# Use Python base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy files
COPY app/ app/
COPY requirements.txt .

# Install dependencies
RUN pip install -r app/requirements.txt

# Expose port
EXPOSE 5000

# Run the app
CMD ["python", "app/app.py"]
