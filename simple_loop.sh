#! /bin/bash

min=$1
max=$2
step=$3

if [ ! $# -eq 3 ]
then
  echo "Please give three parameters!"
  exit 1
fi

echo "# file is automatically generated"

for (( i=$min; i <= $max; i=$i+$step ))
do
  echo $i
done

exit 0;