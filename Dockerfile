# Use an official Python runtime as a parent image
FROM python:3.7.0b1-slim

# Set the working directory to /app
WORKDIR /home/shahin/app

# Copy the current directory contents into the container at /app
ADD . /home/shahin/app

# Install any needed packages specified in requirements.txt
RUN pip install --cert /home/shahin/Desktop/files/paloaltonormaz.crt --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]

