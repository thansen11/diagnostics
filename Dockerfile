FROM quay.io/centos/centos:latest

RUN dnf -y install bind-utils telnet vim nfs-utils sudo openssh openssh-clients postgresql

RUN echo $'#!/bin/bash\n\
while true; do sleep 1d; done\n'\
>> /opt/start.sh

RUN chmod +x /opt/start.sh

CMD ./opt/start.sh
