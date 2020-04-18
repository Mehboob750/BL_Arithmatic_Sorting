#!/bin/bash -x
read -p "Enter the three inputs: " num1 num2 num3;
operation1=$(($num1+$num2*$num3));
echo $operation1;
operation2=$(($num1*$num2+$num3));
echo $operation2;

