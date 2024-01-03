# Single Board Computer FTP server
Docker FTP server, based on [`vsftpd`](https://security.appspot.com/vsftpd.html), for single board computer like **Banana Pi M1** or similar.

## How to use this server
 - Clone this repo in your local folder:  
   ```git clone https://github.com/TheFax/sbc_ftp_server/```
 - Create a directory to use as FTP share folder:  
   ```mkdir /data```
 - edit the ```run.sh``` file in order to personalize the configuration.  
   Don't forget to set the correct LOCAL_IP env variable.
 - exec the ```run.sh``` script ONCE in order to create the container and run it:  
   ```chmod u+x run.sh```  
   ```run.sh```
   
## Credits
This container has been created using [`garethflowers/ftp-server`](https://github.com/garethflowers/docker-ftp-server) as starting skeleton.
