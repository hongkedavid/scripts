# Memory usage for each process from http://php.ingewikkeld.net/entry/human-readable-memory-usage-in-linux-per-process
ps -eo size,pid,user,command --sort -size | awk '{ hr=$1/1024 ; printf("%13.2f Mb ",hr) } { for ( x=4 ; x<=NF ; x++ ) { printf("%s ",$x) } print "" }'
