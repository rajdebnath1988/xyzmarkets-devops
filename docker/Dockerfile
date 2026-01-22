FROM python:3.11-alpine

# Set working directory
WORKDIR /app

# Install OS security updates + required build tools
RUN apk update && apk upgrade && apk add --no-cache gcc musl-dev libffi-dev

# Copy dependency file first (better Docker caching)
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY app/main.py .

# Expose API port
EXPOSE 8000

# Run application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
