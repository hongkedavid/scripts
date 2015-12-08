# text, file
text=$1
file=$2
awk '{print "$text"$0}' $file
