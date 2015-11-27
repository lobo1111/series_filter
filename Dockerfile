FROM centos:6

RUN yum -y install epel-release
RUN yum -y install python-pip
RUN pip install --upgrade pip
RUN pip install -I flexget
RUN yum -y install samba-client cifs-utils

ENV SMB_ENABLE true
ENV SMB_PATH URL
ENV SMB_USER smb_user
ENV SMB_PWD smb_pwd
ENV SLEEP 300

VOLUME /opt/sort_series
VOLUME /opt/complete
VOLUME /mnt/storage

COPY configManager opt/configManager/

COPY start.sh /opt/
RUN chmod +x /opt/start.sh

WORKDIR /opt/
ENTRYPOINT ./start.sh
