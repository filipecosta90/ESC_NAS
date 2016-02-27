#!bin/bash
CURRENT=`pwd`
BASENAME=`basename "$CURRENT"`

rm *"$BASENAME.csv"

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
  mops=`grep 'Mop/s total' $file`
  mops_clean=`echo $mops | grep -o '[0-9]*\.[0-9]*'`
  total_processes=`grep 'Total processes' $file`
  total_clean=`echo $total_processes | egrep -o '[0-9]+'`
  compiled_processes=`grep 'Compiled procs' $file`
  compiled_clean=`echo $compiled_processes | egrep -o '[0-9]+'`
  f77=`grep 'MPIF77 ' $file`
  f77_flags=`grep 'FFLAGS ' $file`
  cc=`grep 'CC ' $file`
  cc_flags=`grep 'FLINKFLAGS ' $file`
  time=`grep 'Time in seconds ' $file`
  time_clean=`echo $time | grep -o '[0-9]*\.[0-9]*'`

  echo "$kernel,$machine_number,$class_clean,$total_clean,$compiled_clean,$time_clean,$mops_clean,$time,$class_clean, $mops,$benchmark,$f77,$f77_flags,$cc,$cc_flags" >>  $machine_number"_"$kernel"_"$class_clean"_"$total_clean"_"$BASENAME".csv"
done

for file1 in *.csv
do
  sort $file1 > "s"_$file1
  mv "s_$file1" $file1
done
