# Redmine 3.0.4 tag fix

[Docker registry page](https://hub.docker.com/r/siestacat/redmine_3.0.4_fix "Docker registry page")

[Github repository page](https://github.com/SiestaCat/redmine_3.0.4_fix "Github repository page")


## Use

`docker pull siestacat/redmine_3.0.4_fix:latest`

Use this image insead redmine:3.0.4

For example in docker-compose.yml:

Before

```
image: redmine:3.0.4
```

After

```
image: siestacat/redmine_3.0.4_fix:latest
```

## What have I done

Add env vars `REDMINE_DB_MYSQL` and `REDMINE_DB_POSTGRES` for `redmine:3.0.4`

I edited this lines in entrypoint:

```
host="${REDMINE_DB_MYSQL:-mysql}"
.....
host="${REDMINE_DB_POSTGRES:-postgres}"
```

## Build and push locally

Build image

`./docker-build.sh`

Push

`docker push siestacat/redmine_3.0.4_fix:latest`