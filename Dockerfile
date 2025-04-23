
# Use an official Python image
FROM python:3.11-slim


# Set working directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .

# Expose port (default Flask port)
EXPOSE 5000

# Run the application
CMD ["flask", "run", "--host=0.0.0.0"]

