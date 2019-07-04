# Ref: https://unix.stackexchange.com/questions/198003/set-default-kernel-in-grub
grep gnulinux /boot/grub/grub.cfg
# Comment out your current default grub in /etc/default/grub and replace it with the sub-menu's $menuentry_id_option from step one, and the selected kernel's $menuentry_id_option from step two separated by >
sudo update-grub
