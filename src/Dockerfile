FROM python:3.9.13-alpine3.15

WORKDIR /app
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
ENTRYPOINT [ "python3", "webapp.py" ]

EXPOSE 5000
