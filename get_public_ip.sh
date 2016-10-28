wget http://ipinfo.io/ip -qO -

# Alternatively
curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//'  
