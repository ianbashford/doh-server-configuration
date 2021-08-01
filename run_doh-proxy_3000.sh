docker run \
	-d\
       	--name doh-proxy-3000\
       	-v /etc/letsencrypt:/etc/letsencrypt \
       	--net=host\
	-v /root/cert:/opt/doh-proxy/etc/cert \
	--restart=unless-stopped \
       	eanu/doh-proxy:odh_20210731_script \
	-H v.dnscrypt.uk -M 4096 -S 127.0.0.53:53 -L 0.0.0.0:3000 -K /opt/doh-proxy/etc/cert/both.pem -C /opt/doh-proxy/etc/cert/both.pem
