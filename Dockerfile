FROM centos:7
RUN yum -y update && \
    yum -y install bash && \
    yum clean all
COPY a.py /
CMD ["/bin/bash"]