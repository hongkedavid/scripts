apt-get install python-software-properties ubuntu-cloud-keyring
add-apt-repository "deb http://ubuntu-cloud.archive.canonical.com/ubuntu precise-updates/folsom main"
apt-get update
apt-get install openjdk-7-jre-headless postgresql keystone keystone-doc python-keystone iptables unzip ntp
update-java-alternatives --jre -s java-1.7.0-openjdk-amd64
dpkg -l hp-sdn-ctl
service sdnc start
service sdnc status
keystone --os-token=ADMIN --os-endpoint http://localhost:35357/v2.0/ user-list
