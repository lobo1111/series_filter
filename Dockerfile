FROM centos:6

RUN yum -y install epel-release
RUN rpm -ivh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN yum -y install python-pip
RUN pip install --upgrade pip
RUN pip install -I flexget
RUN yum -y install samba-client cifs-utils

ENV SMB_PATH 192.168.7.5:/magazyn
ENV SMB_USER torrent
ENV SMB_PWD toor.12

VOLUME /opt/complete
VOLUME /mnt/storage

COPY start.sh /opt/
RUN chmod +x /opt/start.sh

WORKDIR /opt/
ENTRYPOINT ./start.sh