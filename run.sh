docker run \
	-d\
       	--name ng-front\
       	-v /etc/letsencrypt:/etc/letsencrypt \
       	--net=host\
	--restart=unless-stopped \
       	ng-front
