#!bin/bash
CURRENT=`pwd`
BASENAME=`basename "$CURRENT"`

rm "$BASENAME.csvX"
rm "sorted_$BASENAME.csvX"

mkdir __txt
mkdir __csv

mv *.txt __txt
mv *.csv __csv

for file in __txt/* 
do
  benchmark=`grep 'NAS Parallel Benchmarks (NPB3.3-' $file`
  machine=`echo $file  | grep -o 'compute-...'`
  machine_number=`echo $machine  | grep -o '[0-9][0-9][0-9]'`
  kernel=`echo $file | grep -E -o 'is|ep|cg|mg'`
  class=`grep 'Class..' $file`
  class_clean=`echo $class | grep -o '[A-Z]$'`
  mops=`grep 'Mop/s' $file`
  mops_clean=`echo $mops | grep -o '[0-9]*\.[0-9]*'`
  f77=`grep 'F77 ' $file`
  f77_flags=`grep 'FFLAGS ' $file`
  cc=`grep 'CC ' $file`
  cc_flags=`grep 'CFLAGS ' $file`
  time=`grep 'Time in seconds ' $file`
  time_clean=`echo $time | grep -o '[0-9]*\.[0-9]*'`
  echo "$kernel,$machine_number,$class_clean, $mops_clean, $time_clean,$time,$class_clean, $mops,,$benchmark,$f77,$f77_flags,$cc,$cc_flags" >>  "$BASENAME.csvX"
done

sort $BASENAME.csvX > "sorted_$BASENAME.csvX"
