#!bin/bash


for file in *bin_* 
do
  echo "working on $file"
  cd $file
    cp __compare/COMPARATION_ep__C_bin* ../graph__SEQ_EP_C_ALL
    cd ..
done


