#!bin/bash

for file in *bin_* 
do
  echo "working on $file"
  cd $file
    sh get_times.sh
    sh create_compare.sh
    cd ..
done


