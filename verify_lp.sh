cat $1.weight | grep " x_" | grep -v " B\| N" > tmp.1
cat $1.weight | grep -v " x_" | grep -v " l" | grep " B\| N" > tmp.2
cat $1.weight | grep " x_" | grep " B\| N" > tmp.3
paste tmp.1 tmp.2  > tmp
sed -i 's/\t/ /g' tmp;
cat tmp.3 >> tmp
sort -n -k1 tmp > tmp.tmp
mv tmp.tmp tmp;
for line in $(cat $1.demands);
do
    src=$(echo $line | cut -d',' -f1);
    dst=$(echo $line | cut -d',' -f2);
    dmd=$(echo $line | cut -d',' -f3);
#    echo $src, $dst, $dmd;
    if [ $src -ne $dst ]; then
       cat tmp | grep "\_$src\_$dst " | grep -v "B              0" | grep -v "NL             0" | tr -s " " > tmp.tmp;
       a=$(cut -d'_' -f2 tmp.tmp | sort -n);
       b=$(cut -d'_' -f3 tmp.tmp | sort -n);
       c=$(cut -d'B' -f2 tmp.tmp | cut -d' ' -f2 | sort -n | uniq);
#       echo $a;
#       echo $b;
       is_src=0;
       is_dst=0;
       for sn in $(echo $a); 
       do
          if [ $sn -eq $src ]; then
             is_src=1;
             dst_src=1;
          else
             dst_src=0;
          fi
          for dn in $(echo $b);
          do
             if [ $dn -eq $dst ]; then
                is_dst=1;
             elif [ $sn -eq $dn ]; then
                dst_src=1;
             fi
          done
          if [ $dst_src -eq 0 ]; then
             echo "Disconnect: $src, $dst, $sn";
          fi
       done
       if [ $is_src -eq 0 ]; then
          echo "Src: $src, $dst, $src";
       fi
       if [ $is_dst -eq 0 ]; then
          echo "Dst: $src, $dst, $dst";
       fi
       for char in $(echo $c);
       do
          if [ $char -ne $dmd ]; then
              echo "Demand: $src, $dst, $dmd, $char";
          fi
       done
    fi
done
