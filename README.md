# Dynamodb local
Simple Dockerfile to build and run dynamodb locally

## Build
```
docker build -t dynamodb:latest .
```

## Run
```
docker run -d -p 8000:8000 --name dynamodb dynamodb:latest
```

## Alpine
I tried using alpine, but when connecting to the db it always crashes, something with `sqlite4java`
