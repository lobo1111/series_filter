FROM centos:6

RUN yum -y install epel-release
RUN yum -y install python-pip
RUN pip install --upgrade pip
RUN pip install -I flexget
RUN yum -y install samba-client cifs-utils

ENV SMB_SOURCE_ENABLE true
ENV SMB_SOURCE_PATH URL
ENV SMB_SOURCE_USER smb_user
ENV SMB_SOURCE_PWD smb_pwd

ENV SMB_TARGET_ENABLE true
ENV SMB_TARGET_PATH URL
ENV SMB_TARGET_USER smb_user
ENV SMB_TARGET_PWD smb_pwd

ENV SLEEP 300

VOLUME /opt/sort_series
VOLUME /opt/complete
VOLUME /mnt/storage

COPY configManager opt/configManager/

COPY start.sh /opt/
RUN chmod +x /opt/start.sh

WORKDIR /opt/
ENTRYPOINT ./start.sh
