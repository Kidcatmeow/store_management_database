@echo off

# Build the custom MySQL image
docker build -t custom-mysql .

# Stop and remove the existing container (if it exists)
docker stop my-container
docker rm my-container

# Run the new container
docker run --name my-container -p 1234:3306 -d custom-mysql
