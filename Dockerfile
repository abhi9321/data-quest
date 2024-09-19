# Use the official Airflow image
FROM apache/airflow:2.10.1

# Switch to root user to install packages
USER root

# Copy the requirements.txt file into the container
COPY requirements.txt /requirements.txt

# Switch back to the airflow user
USER airflow
# Install the dependencies from requirements.txt
RUN pip install --no-cache-dir -r /requirements.txt