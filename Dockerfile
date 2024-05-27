FROM --platform=$BUILDPLATFORM python:3.8 AS builder

EXPOSE 8000

WORKDIR /microservice 

COPY requirements.txt /microservice

RUN python -m pip install --upgrade pip

RUN python -m pip install --upgrade django

RUN python -m pip install -r requirements.txt

COPY . /microservice 

ENTRYPOINT ["python3"] 

CMD ["manage.py", "runserver", "0.0.0.0:8000"]

