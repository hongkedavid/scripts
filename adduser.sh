# Add a user in Ubuntu 14
sudo useradd -d /home/xx -m xx -s /bin/bash
sudo mkdir /home/xx/.ssh
sudo vi .ssh/authorized_keys
sudo chmod 644 .ssh/authorized_keys
sudo chown xx:xx /home/david/.ssh

# Grant sudo access
sudo vi /etc/sudoers
