## Requirements

1. WSL (windows users) - `wsl --install` --> restart 1 time
2. [Docker Desktop](https://www.docker.com/products/docker-desktop/)

## Step

1. clone this repo
2. build the custom image via `docker build -t custom-mysql .`
3. see if the image is created successfully with `docker images`
4. run the created image via `docker run --name my-container -p 1234:3306 -d custom-mysql`
5. see if the container is running with `docker ps`
6. connect with MYSQL Workbench (specify the port to `1234`)

## Add/Delete SQL Scripts
# Windows
- type in the terminal:  `.\reapply.bat`
# Mac
- coming soon...