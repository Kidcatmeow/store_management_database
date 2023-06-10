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


### Git
Commit & Push
1. check if file has any changes `git status`
2. add files that we want to commit `git add <filename>` for specific file or `git add .` for all files
3. commit the file and add a commit message `git commit -m "<commit message>"`
4. Push the change file to the server for others to fetch `git push origin main`

Fetch & pull
1. check changes in the main server `git fetch`
2. pull the changes `git pull origin main`

No longer want to commit the current file (the server has more recent version)
- if you want to keep your own commit and add other changes from the main server `git pull --rebase`
- if you want to abandon any files you've change and just get to the recent commit on the server`git reset --hard <lastest commit id of origin>`
- if you want to go back to the latest commit but won't lose any of your files `git reset --soft <lastest commit id of origin>`