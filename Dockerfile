FROM python:3.10

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libatlas-base-dev \
    && rm -rf /var/lib/apt/lists/* 

# Upgrade pip
RUN pip install --upgrade pip 

# Set the working directory
WORKDIR /app

# Copy pyproject.toml
COPY pyproject.toml ./

# Copy internal packages
COPY src/ ./

# Install dependencies from pyproject.toml
RUN pip install --no-cache-dir .

# Install dev dependencies from pyproject.toml
RUN pip install --no-cache-dir .[dev]

# Copy the rest of the application code
COPY . .
