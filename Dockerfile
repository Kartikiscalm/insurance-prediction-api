# use Python 3.14.1 base image 
FROM python:3.14.1

#choose a working directory
WORKDIR /app

#copy requirements and install all the dependencies 
COPY requirments.txt .
RUN pip install --no-cache-dir -r requirments.txt

#copy rest of application code 
COPY . .

#expose the application ports 
EXPOSE 8000

#command to start fastAPI application
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
