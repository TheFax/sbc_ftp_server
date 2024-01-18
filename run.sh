#!/bin/bash
docker system prune
docker build ./sbc_ftp_server -t TheFax_sbc_ftp_server:1.0
docker run \
	--detach \
	--env FTP_PASS=banana \
	--env FTP_USER=banana \
	--env LOCAL_IP=192.168.0.214 \
	--publish 20-21:20-21/tcp \
	--publish 40000-40019:40000-40019/tcp \
	--health-start-period=1m \
	--health-interval=1m \
	--health-retries=2 \
	--volume /data:/data \
	--name sbc_ftp_server \
	--restart unless-stopped \
	TheFax_sbc_ftp_server:1.0
