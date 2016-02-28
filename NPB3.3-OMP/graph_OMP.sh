#!bin/bash


for file in *bin_* 
do
  echo "working on $file"
  cd $file
    cp __compare/* ../graph__OMP
    cd ..
done


