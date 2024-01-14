#!/bin/sh

addgroup \
	-g $GID \
	-S \
	$FTP_USER

adduser \
	-D \
	-G $FTP_USER \
	-h /home/$FTP_USER \
	-s /bin/false \
	-u $UID \
	$FTP_USER

mkdir -p /home/$FTP_USER
chown -R $FTP_USER:$FTP_USER /home/$FTP_USER
echo "$FTP_USER:$FTP_PASS" | /usr/sbin/chpasswd

touch /var/log/vsftpd.log
tail -f /var/log/vsftpd.log | tee /dev/stdout &
touch /var/log/xferlog
tail -f /var/log/xferlog | tee /dev/stdout &

# FAX
mkdir -p /data
chown -R $FTP_USER:$FTP_USER /data

CONFIG_FILE=/etc/vsftpd.conf
KEY_IP=pasv_address
sed -i "s/\(^$KEY_IP *= *\).*/\1$LOCAL_IP/" $CONFIG_FILE

#/bin/sh
/usr/sbin/vsftpd

