# Get the base image

FROM python:3.14

# Write the name of the maintainer

MAINTAINER trainwithshubham

# Create a working directory to store all the files

WORKDIR /app

# Copy all the source code from host to the container

COPY . .

# Run the necessary commands required to install the application

RUN pip install -r requirements.txt

# Indicate the port used

EXPOSE 80

# Run the application

CMD ["python","run.py"]
