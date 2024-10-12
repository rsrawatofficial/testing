FROM ubuntu:22.04  # Specify a stable Ubuntu version

# Install system dependencies
RUN apt-get update -y && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends \
       gcc \
       libffi-dev \
       libssl-dev \  # Install libssl-dev for aiohttp
       python3-pip \
       python3-dev \
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
