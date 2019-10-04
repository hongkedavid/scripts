# Add a user named $USERNAME in Ubuntu
sudo useradd -d /home/$USERNAME -m $USERNAME -s /bin/bash
sudo mkdir /home/$USERNAME/.ssh
sudo vi .ssh/authorized_keys
sudo chmod 644 .ssh/authorized_keys
sudo chown -R $USERNAME:$USERNAME /home/$USERNAME/.ssh

# Grant sudo access
sudo vi /etc/sudoers
