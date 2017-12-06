# Dynamodb local
Simple Dockerfile to build and run dynamodb locally with alpine linux

## Build
```
docker build -t dynamodb:latest .
```

## Run
```
docker run -d -p 8000:8000 --name dynamodb dynamodb:latest
```
