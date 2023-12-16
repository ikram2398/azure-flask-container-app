FROM python

# Copy requirements file separately to utilize Docker cache
COPY ./requirements.txt /webapp/requirements.txt

WORKDIR /webapp

# Install dependencies
RUN pip install -r requirements.txt

# Copy the entire application to the container
COPY ./webapp/ /webapp

# Expose the port that the app runs on
EXPOSE 8000

# Command to run the application
CMD ["python", "app.py"]
