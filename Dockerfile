FROM centos

MAINTAINER quangtd2

RUN rpm --rebuilddb && yum install -y python && yum clean all

COPY test.py /root

ENTRYPOINT ["python"]

CMD ["/root/test.py"]

