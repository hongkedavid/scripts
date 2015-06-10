# key-word directory
for line in $(find $2 -type f -name "*.java" -exec grep -ls $1 {} \;); do echo $line; cat $line | grep $1; done
