cp /home/remoteuser/secret/secret.pub /home/remoteuser/.ssh/authorized_keys
chown remoteuser /home/remoteuser/.ssh
chown remoteuser /home/remoteuser/.ssh/authorized_keys
chmod 700 /home/remoteuser/.ssh
chmod 600 /home/remoteuser/.ssh/authorized_keys

/usr/sbin/sshd -D -e