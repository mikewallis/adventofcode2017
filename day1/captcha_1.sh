#!/bin/bash

echo "the input is $1"

captcha=$1
sum=0

for (( i=0; i<${#captcha}; i++)); do
  if [[ $i+1 -ge ${#captcha} ]]; then
    j=0;
  else
    j=$i+1;
  fi 
  num1=${captcha:$i:1}
  num2=${captcha:$j:1}
  echo working on index ${i} $num1, $num2
  if [[ $num1 == $num2 ]]; then
	sum=$(( $sum + $num1 ));
  fi
done
echo $sum
  
