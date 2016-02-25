#!bin/bash

mkdir __compare
rm __compare/"COMPARATION_"*

for class in S A B C
do
  for kernel in mg is cg ep
  do
    for file in *$kernel"_"$class*.csv
    do
      head -1 $file >> "COMPARATION_"$kernel"__"$class".csv"
    done
  done
done

mkdir __by_machine
mv 641*.csv __by_machine
mv 431*.csv __by_machine
mv 652*.csv __by_machine
mv 662*.csv __by_machine
mv "COMPARATION_"* __compare
