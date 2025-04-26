# Start from an official Python image
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Install git if you want to clone the repo
# RUN apt-get update && apt-get install -y git

# Clone your repo (OR you can COPY if you have the code locally)
# RUN git clone https://github.com/BoredAbhi/Requests-API-Tests.git .

# Install dependencies (you should have a requirements.txt with behave etc.)
RUN pip install --no-cache-dir -r requirements.txt

# Default command to run behave tests
CMD ["behave"]
