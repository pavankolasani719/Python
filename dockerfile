# Use an official Python runtime as a parent image
FROM python:3

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 8088 available to the world outside this container
EXPOSE 8088

# Define environment variable
ENV NAME Calculator

# Run app.py when the container launches
CMD ["python", "calculator.py"]
