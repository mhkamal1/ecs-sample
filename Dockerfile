# Dockerfile

# pull the official docker image
FROM python:3.9

# set work directory
WORKDIR /

# install dependencies

COPY requirements.txt .

RUN pip install -r requirements.txt

# copy project
COPY . .

# Run fastapi 
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]