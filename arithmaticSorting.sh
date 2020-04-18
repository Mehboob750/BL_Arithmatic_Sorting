#!/bin/bash -x
declare -A dictionary
declare -a result

read -p "Enter the three inputs: " num1 num2 num3;
operation1=$(($num1+$num2*$num3));
echo $operation1;
dictionary[operation1]="$operation1";

operation2=$(($num1*$num2+$num3));
echo $operation2;
dictionary[operation2]="$operation2";

operation3=$(($num3+$num1/$num2));
echo $operation3;
dictionary[operation3]="$operation3";

operation4=$(($num1%$num2+$num3));
echo $operation4;
dictionary[operation4]="$operation4";
echo ${dictionary[@]};

for iteration in "${dictionary[@]}"
do
	result[((iteration1++))]=$iteration;
done

echo  ${result[@]};
limit=${#result[@]};

for (( iteration=0; iteration<limit; iteration++ ))
do
        for (( iteration1=iteration+1; iteration1<limit; iteration1++ ))
        do
                if (( ${result[iteration]} < ${result[iteration1]} ))
                then
                        temp=${result[iteration]};
                        result[((iteration))]=${result[iteration1]};
                        result[((iteration1))]=$temp;
                fi
        done
done
echo " Computational Result in Descending Order:" ${result[@]};


for (( iteration=0; iteration<limit; iteration++ ))
do
        for (( iteration1=iteration+1; iteration1<limit; iteration1++ ))
        do
                if (( ${result[iteration]} > ${result[iteration1]} ))
                then
                        temp=${result[iteration]};
                        result[((iteration))]=${result[iteration1]};
                        result[((iteration1))]=$temp;
                fi
        done
done
echo " Computational Result in Ascending Order:" ${result[@]};
