#!bin/bash

mkdir graph1 

for file in *bin_* 
do
  echo "working on $file"
  cd $file
    cp __compare/COMPARATION_cg__C_bin* ../graph1
    cd ..
done


