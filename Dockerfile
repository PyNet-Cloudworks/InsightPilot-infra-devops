# Use an official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy project files to container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose Flask default port
EXPOSE 5000

# Command to run the Flask app
CMD ["python", "app.py"]