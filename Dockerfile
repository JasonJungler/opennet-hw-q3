# Use the official Python 3.13 image
FROM python:3.13-rc-slim

# Set the working directory
WORKDIR /app

# Copy the source code into the container
COPY ./src /app/src

# Install Flask
RUN pip install flask

# Expose port 5001
EXPOSE 5001

# Command to run the Flask app
CMD ["python", "/app/src/app.py"]
