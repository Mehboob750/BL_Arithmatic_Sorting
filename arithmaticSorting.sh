#!/bin/bash -x
declare -A dictionary
counter=1;
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

resultInArray[((counter++))]=${dictionary[operation1]};
resultInArray[((counter++))]=${dictionary[operation2]};
resultInArray[((counter++))]=${dictionary[operation3]};
resultInArray[((counter++))]=${dictionary[operation4]};

