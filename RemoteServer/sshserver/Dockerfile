
FROM ubuntu:latest

RUN apt update && apt install  openssh-server sudo -y

RUN useradd -rm -d /home/remoteuser -s /bin/bash -g root -G sudo -u 1001 remoteuser 
RUN  echo 'remoteuser:remoteuser' | chpasswd
RUN usermod -s /bin/false remoteuser
RUN service ssh start

COPY updateAuthorizedKeyAndLaunchSshd.sh /root/

RUN echo "GatewayPorts clientspecified" >> /etc/ssh/sshd_config

EXPOSE 22
EXPOSE 3389

CMD ["/usr/bin/bash","/root/updateAuthorizedKeyAndLaunchSshd.sh"]

VOLUME ["/home/remoteuser/.ssh"]