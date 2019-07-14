# View all processes
ps -Aef

# View zombie processes
ps -ef | grep defunct

# Clean up a zombie process by killing its parent process 
sudo kill -HUP $(ps -A -ostat,ppid | grep -e '[zZ]'| awk '{ print $2 }')
