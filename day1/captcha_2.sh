#!/bin/bash

echo "the input is $1"

captcha=$1
sum=0
lencap=${#captcha}
circle=$(($lencap/2))

echo the circle is $circle

for (( i=0; i<$lencap; i++)); do
  j=$((i + circle));
  if [[ $j -ge $lencap ]]; then
    j=$((j % $lencap));
  fi 
  num1=${captcha:$i:1}
  num2=${captcha:$j:1}
  echo working on index ${i}: $num1, $num2
  if [[ $num1 == $num2 ]]; then
	sum=$(( $sum + $num1 ));
  fi
done
echo $sum
  
