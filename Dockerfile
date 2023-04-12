FROM centos:7

RUN yum -y update && \
    yum -y install python3 && \
    python3 -m ensurepip && \
    pip3 install --upgrade pip && \
    yum -y install python3-devel

RUN pip3 install Flask
RUN systemctl stop firewalld

EXPOSE 4885

COPY a.py /

CMD ["python3", "/a.py"]