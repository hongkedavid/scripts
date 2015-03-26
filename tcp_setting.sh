echo "5">/proc/sys/net/ipv4/tcp_fin_timeout
echo "1">/proc/sys/net/ipv4/tcp_tw_reuse
echo "1">/proc/sys/net/ipv4/tcp_tw_recycle
echo "1024 65000">/proc/sys/net/ipv4/ip_local_port_range
echo "5000">/proc/sys/net/ipv4/tcp_max_tw_buckets
echo "1024">/proc/sys/net/core/somaxconn
echo "1">/proc/sys/net/ipv4/tcp_syncookies
echo "4194304">/proc/sys/net/core/rmem_default
echo "4194304">/proc/sys/net/core/rmem_max
echo "4194304">/proc/sys/net/core/wmem_default
echo "4194304">/proc/sys/net/core/wmem_max
