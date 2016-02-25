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
  benchmark=`egrep 'NAS Parallel Benchmarks (NPB3.3-' $file`
  threads=`egrep 'Number of available threads:' $file`
  echo $threads
  n_threads=`echo $threads | egrep -o '[0-9]+'`
  echo $n_threads
  machine=`echo $file  | egrep -o 'compute-...'`
  machine_number=`echo $machine  | egrep -o '[0-9][0-9][0-9]'`
  kernel=`echo $file | egrep -o '(is)|(ep)|(cg)|(mg)'`
  class=`egrep 'Class..' $file`
  class_clean=`echo $class | egrep -o '[A-Z]$'`
  mops=`egrep 'Mop/s total' $file`
  mops_clean=`echo $mops | egrep -o '[0-9]*\.[0-9]*'`
  f77=`egrep 'F77 ' $file`
  f77_flags=`egrep 'FFLAGS ' $file`
  cc=`egrep 'CC ' $file`
  cc_flags=`egrep 'CFLAGS ' $file`
  time=`egrep 'Time in seconds ' $file`
  time_clean=`echo $time | egrep -o '[0-9]*\.[0-9]*'`

  echo "$kernel,$machine_number,$n_threads,$class_clean,$n_threads,$time_clean,$mops_clean,$time,$class_clean, $mops,$benchmark,$f77,$f77_flags,$cc,$cc_flags" >>  $machine_number"_"$kernel"_"$class_clean"_"$n_threads"_"$BASENAME".csv"
done

for file1 in *.csv
do
  sort $file1 > "s"_$file1
  mv "s_$file1" $file1
done
