# Use the official Python image from the Docker Hub
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

COPY . /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install any dependencies
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000

ENV FLASK_APP=app.py
# Copy the rest of the application code
COPY . .

# Command to run the application
CMD ["flask", "run","--host=0.0.0.0"]

