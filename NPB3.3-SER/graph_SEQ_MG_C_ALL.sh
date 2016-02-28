#!bin/bash


for file in *bin_* 
do
  echo "working on $file"
  cd $file
    cp __compare/COMPARATION_mg__B_bin* ../graph__SEQ_MG_C_ALL
    cd ..
done


