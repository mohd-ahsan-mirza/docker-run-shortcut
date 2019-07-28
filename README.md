# Description
Right now in order to enter a running docker container you will have to type ```docker ps``` and then grab the image name or ID and then run ```docker exec -it <Image name or ID> bash```
With this script all you need to pass in the image name as an argument, and if a container is running using that image, you will enter that image
#Setup
* Clone the repo
* CD in the directory where the repo exists and run the following command
```
chmod +x execute.sh
```
* Add alias in ~/.bash_profile 
```
alias docker-exec="{Absolute path to repo}/docker-exec-shortcut/execute.sh $1"
```
* Run the following the command 
```
source ~/.bash_profile
```
#Example
Output of the following command
```
docker ps 
```
```
70bb07a7c10d        mysql:5.6           "docker-entrypoint.s…"   29 minutes ago      Up 29 minutes       3306/tcp                 resume-builder_mysql_1
```
```
docker-exec mysql
```
