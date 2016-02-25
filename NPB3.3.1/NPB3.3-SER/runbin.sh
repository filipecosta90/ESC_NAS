#!bin/bash

for file in *bin_* 
do
  cd $file
    sh get_times.sh
  cd ..
done


