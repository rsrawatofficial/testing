FROM ubuntu:22.04

# Install system dependencies and Python development headers
RUN apt-get update -y && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends \
       gcc \
       libffi-dev \
       libssl-dev \
       python3-pip \
       python3-dev \
       python3.12-dev \  # Install the development package for Python 3.12
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
