# guacdb-docker
Docker image of a PostgreSQL database for [Apache
Guacamole](https://guacamole.apache.org).

## What does it do?
This image is just the standard [`postgres`](https://hub.docker.com/_/postgres)
image with one difference: it loads the Guacamole database initialization
script be default.

## How do I use it?
You can build the image using `docker build`:
```sh
$ docker build -t guacdb:latest .
```

The following arguments are supported. Both default to `latest` when not specified.
 - `GUACAMOLE_TAG` - The tag of the [`guacamole/guacamole`](https://hub.docker.com/r/guacamole/guacamole) image to use.
 - `POSTGRES_TAG` - The tag of the [`postgres`](https://hub.docker.com/_/postgres) image to use.
