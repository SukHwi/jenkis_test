FROM centos:7
RUN yum -y update && \
    yum -y install bash && \
    yum clean all
CMD ["/bin/bash"]