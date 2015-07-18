apt-get update
apt-get install python-software-properties ubuntu-cloud-keyring
add-apt-repository cloud-archive:icehouse
apt-get update
apt-get install keystone
unzip VAN_SDN_Controller_2.4.6_hp-van-sdn-ctlr-2.4.6-x64.zip 
dpkg --unpack hp-sdn-ctl_2.4.6.0627_amd64.deb 
apt-get install -f
dpkg -l hp-sdn-ctl
service sdnc start
service sdnc status
/opt/sdn/admin/config_local_keystone
ntpdc -c peers
