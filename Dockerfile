ARG GUACAMOLE_TAG=latest
ARG POSTGRES_TAG=latest

# Generate the SQL script to initialize Guacamole's DB
FROM guacamole/guacamole:${GUACAMOLE_TAG} AS builder
RUN /opt/guacamole/bin/initdb.sh --postgres > /tmp/initdb.sql

# Copy the initialization script into the proper directory on the PostgreSQL container
FROM postgres:${POSTGRES_TAG}
COPY --from=builder /tmp/initdb.sql /docker-entrypoint-initdb.d/intialize_guacamole.sql
