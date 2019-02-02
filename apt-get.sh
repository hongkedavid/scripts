# Ref: https://askubuntu.com/questions/438345/how-to-remove-install-a-package-that-is-not-fully-installed
# Remove a package that is not fully installed
sudo rm /var/lib/dpkg/info/[package_name].*
sudo dpkg --configure -a
sudo apt-get update

# Ref: https://askubuntu.com/questions/636456/14-04-upgrade-triggers-grub-pc-failure
sudo apt-get purge grub-pc grub-common
sudo apt-get install grub-pc grub-common
