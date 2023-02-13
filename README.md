# Django and Minio with Docker Compose

Spin up a mock S3 bucket with Minio used to serve Django static files locally.

### Spin up

Place your Docker network gateway IP in `.env`. And spin up the docker containers.

```
docker network inspect bridge
docker-compose up
```

### Tear down

```
docker-compose down
docker volume prune
```

### Troubleshooting

If you are using Chrome and you are seeing a CORS header issue in the console, try running Chrome temporarily with web security disabled (only for development purposes).

```
## on Linux
google-chrome --args --user-data-dir="./test" --disable-web-security
```
