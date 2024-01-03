# Single Board Computer FTP server
Docker FTP server, based on [`vsftpd`](https://security.appspot.com/vsftpd.html), for single board computer like **Banana Pi M1** or similar.

## How to use this server
 - Clone this repo in your local folder
 - Create a directory to use as share: example ```/data```
 - edit the ```run.sh``` file in order to personalize the configuration  
   Don't forget to set the correct LOCAL_IP env variable.
 - exec the run.sh script ONCE in order to create the container and run it

# Credits
This container has been created starting from https://github.com/garethflowers/docker-ftp-server
