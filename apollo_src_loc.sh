#find . -type f | perl -ne 'print $1 if m/\.([^.\/]+)$/' | sort -u
c=0
a=$(find $1 -type f -name '*.cc' | xargs wc -l | tail -n1 | awk '{$1=$1};1' | cut -d' ' -f1)
c=$(($a+$c))
echo $a
a=$(find $1 -type f -name '*.cpp' | xargs wc -l | tail -n1 | awk '{$1=$1};1' | cut -d' ' -f1)
c=$(($a+$c))
echo $a
a=$(find $1 -type f -name '*.c' | xargs wc -l | tail -n1 | awk '{$1=$1};1' | cut -d' ' -f1)
c=$(($a+$c))
echo $a
a=$(find $1 -type f -name '*.h' | xargs wc -l | tail -n1 | awk '{$1=$1};1' | cut -d' ' -f1)
c=$(($a+$c))
echo $a
a=$(find $1 -type f -name '*.hpp' | xargs wc -l | tail -n1 | awk '{$1=$1};1' | cut -d' ' -f1)
c=$(($a+$c))
echo $a
a=$(find $1 -type f -name '*.py' | xargs wc -l | tail -n1 | awk '{$1=$1};1' | cut -d' ' -f1)
c=$(($a+$c))
echo $a
a=$(find $1 -type f -name '*.proto' | xargs wc -l | tail -n1 | awk '{$1=$1};1' | cut -d' ' -f1)
c=$(($a+$c))
echo $a
a=$(find $1 -type f -name '*.bash' | xargs wc -l | tail -n1 | awk '{$1=$1};1' | cut -d' ' -f1)
c=$(($a+$c))
echo $a
a=$(find $1 -type f -name '*.sh' | xargs wc -l | tail -n1 | awk '{$1=$1};1' | cut -d' ' -f1)
c=$(($a+$c))
echo $a
echo $c
