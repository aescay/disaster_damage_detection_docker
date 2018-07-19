# Use an official Python runtime as a parent image
FROM python:3.6.5

# Set labels for documentation and organization purposes
LABEL maintainer="Andrew Escay <andrew.escay@gmail.com>"

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN pip --no-cache-dir install --trusted-host pypi.python.org -r /app/requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 9999

# Define environment variable
ENV name=disaster_damage_detection

# Run app.py when the container launches
# CMD ["python", "app.py"]
