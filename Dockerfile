FROM centos

MAINTAINER quangtd2

#RUN rpm --rebuilddb && yum install -y python && yum clean all
RUN yum install -y python

COPY test.py /root

ENTRYPOINT ["python"]

CMD ["/root/test.py"]

