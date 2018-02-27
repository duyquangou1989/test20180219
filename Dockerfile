#FROM centos
#MAINTAINER quangtd2
##
#RUN rpm --rebuilddb && yum install -y python && yum clean all
#RUN yum install -y python
##
#COPY test.py /root
#ENTRYPOINT ["python"]
#CMD ["/root/test.py"]
FROM webdevops/php-nginx
MAINTAINER quangtd2
COPY index.php /app/index.php
#COPY test.sh /app/test.sh
EXPOSE 80:80
CMD /etc/init.d/nginx start ; /etc/init.d/php7.0-fpm start ; /usr/bin/curl http://127.0.0.1/index.php
