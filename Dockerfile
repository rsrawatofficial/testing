FROM ubuntu:22.04

# Install system dependencies and Python
RUN apt-get update -y && apt-get install -y --no-install-recommends \
    python3.12 \
    python3.12-dev \
    python3-pip \
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
RUN pip3 install --no-cache-dir --upgrade pip setuptools
RUN pip3 install --no-cache-dir --requirement requirements.txt

# Command to run your application
CMD ["python3", "main.py"]
