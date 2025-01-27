# Use the official Python image from the Docker Hub
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy application dependency manifests to the container image
COPY requirements.txt ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the local code to the container image
COPY . .

# Expose the port the app runs on
EXPOSE 8080

# Run the web service on container startup
CMD ["python", "hello.py"]
