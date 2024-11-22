# Use the pgvector base image
FROM ankane/pgvector:v0.4.4

# Set environment variables for PostgreSQL
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=mysecretpassword
ENV POSTGRES_DB=postgres

# Copy the database dump file into the image
COPY database_dump.sql /docker-entrypoint-initdb.d/database_dump.sql
