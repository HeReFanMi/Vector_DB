
# Vector Database

## Overview
The **Vector Database** repository is part of the HereFamni project and provides a system for storing and querying vector embeddings. It is optimized for handling high-dimensional data and is used for the retrieval-augmented generation (RAG) system to retrieve relevant content based on vector embeddings.

## Features
- Stores vector embeddings for fast similarity search.
- Supports integration with the RAG system.
- Can handle large datasets with efficient storage and querying.

## Setup Instructions

### Prerequisites
- Docker and Docker Compose installed.
- A running PostgreSQL database container (configured separately).
- The vector database container requires access to the same network as the RAG system for seamless integration.

### Steps
1. Clone the repository:
   ```bash
   git clone https://github.com/HeReFanMi/vector-database.git
   cd vector-database
   ```

2. Build and Run the Docker Container:
   Build the Docker image and start the containers:
   ```bash
   docker build -t vector-database .
   docker-compose up
   ```

3. Access the Application:
   Once the container is running, access the database via the configured port. The default PostgreSQL port is mapped to 5433:
   ```bash
   psql -h localhost -p 5433 -U postgres -d vector_database
   ```

## Usage
- The vector database stores embeddings and allows for efficient similarity searches.
- You can connect this database to your RAG system to perform retrieval-augmented generation.


