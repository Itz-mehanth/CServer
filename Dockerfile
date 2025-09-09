# Base image
FROM ubuntu:22.04

# Install compiler
RUN apt-get update && apt-get install -y gcc

# Set working directory
WORKDIR /app

# Copy server code
COPY server.c .

# Compile the C server
RUN gcc server.c -o server

# Expose port (change if your server uses another port)
EXPOSE 8080

# Run the server
CMD ["./server"]
