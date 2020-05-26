# Add a user named $USERNAME in Ubuntu
sudo useradd -d /home/$USERNAME -m $USERNAME -s /bin/bash
sudo mkdir /home/$USERNAME/.ssh
sudo vi /home/$USERNAME/.ssh/authorized_keys
sudo chown -R $USERNAME:$USERNAME /home/$USERNAME/.ssh

# Grant sudo access
sudo usermod -aG sudo $USERNAME
#sudo vi /etc/sudoers
