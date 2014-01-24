# a convenient script for logging the output of a program to an output file with the current datatime labelled inside the file name

file="out-$(date +%Y-%m-%d-%H-%M)";
$1 > $file;
