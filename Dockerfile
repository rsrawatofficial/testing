FROM python:3.12-slim  # This image includes Python and necessary headers

# Install system dependencies
RUN apt-get update -y && apt-get install -y --no-install-recommends \
    gcc \
    libffi-dev \
    libssl-dev \
    build-essential \
    ffmpeg \
    aria2 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
COPY . /app/
WORKDIR /app/

# Upgrade pip and install requirements
RUN pip install --no-cache-dir --upgrade pip setuptools
RUN pip install --no-cache-dir --requirement requirements.txt

# Command to run your application
CMD ["python", "main.py"]
