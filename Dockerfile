# Select a base image
FROM python:3-slim

# Set the working directory for the app and copy files into the container
WORKDIR /usr/src/app
COPY . .

# Install any dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Define exposed ports
EXPOSE 5000

# Instruct the container to run the app
CMD ["python", "./app.py"]
