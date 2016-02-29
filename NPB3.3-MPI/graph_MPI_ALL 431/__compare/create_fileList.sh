

for file in *.csv 
do
  echo "csvread('$file');" >> filelist.txt
done
