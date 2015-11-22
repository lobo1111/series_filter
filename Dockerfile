FROM centos:6

RUN yum -y install samba-client cifs-utils

ENV SMB_PATH 192.168.7.5:/magazyn
ENV SMB_USER torrent
ENV SMB_PWD toor.12

VOLUME /mnt/storage