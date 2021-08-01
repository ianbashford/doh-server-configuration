docker run \
	-d \
	--name nginx-prometheus \
       	--restart=unless-stopped \
       	-p 9100:9100 \
       	nginx/nginx-prometheus-exporter \
      	-nginx.scrape-uri=https://v.dnscrypt.uk/nginx_status \
       	-web.listen-address 0.0.0.0:9100 \
       	-nginx.ssl-verify false

