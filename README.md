# Flask Docker API

A simple Flask REST API containerized using Docker.

## Features
- GET /
- GET /hello
- POST /echo
- Dockerized Flask application

## Build & Run

```bash
docker build -t flask-api .
docker run -p 5000:5000 flask-api
