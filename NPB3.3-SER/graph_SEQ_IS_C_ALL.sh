#!bin/bash


for file in *bin_* 
do
  echo "working on $file"
  cd $file
    cp __compare/COMPARATION_is__C_bin* ../graph__SEQ_IS_C_ALL
    cd ..
done


