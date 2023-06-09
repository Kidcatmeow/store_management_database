# Custom MySQL
This custom MySQL image is designed to enhance the development experience for programs that require interaction with MySQL databases. 

It provides a seamless environment by automatically seeding SQL queries stored in the `script` folder during image build, offering a convenient and pre-configured environment, making it easier to set up a local development database.

## Requirements

1. WSL (windows users) - `wsl --install` --> restart 1 time
2. [Docker Desktop](https://www.docker.com/products/docker-desktop/)

## Usage

### Run the container
- Windows: `.\start.bat`
- Mac: `chmod +x start.sh && ./start.sh`
-  **NOTE**: see if the container is running with `docker ps`

## Connection

### Programmtically
Java: 
 ```java
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:1234/<database_name>", "root", "1");
 ```
### MySQL Workbench
- create new connection and specify the port to `1234`

### Docker
- `docker exec -it my-container mysql -u root -p1`
    