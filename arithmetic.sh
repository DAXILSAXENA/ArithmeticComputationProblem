#! /bin/bash -x

echo "Enter any three numbers:"

read -p "Enter first number:" a
read -p "Enter second number:" b
read -p "Enter third number:" c

echo "Numbers you entered are:" $a $b $c

compute1=$( echo $a $b $c | awk '{print $1+$2*$3}' )
echo $a+$b*$c = $compute1

compute2=$( echo $a $b $c | awk '{print $1*$2+$3}' )
echo $a*$b+$c = $compute2

compute3=$( echo $a $b $c | awk '{print $3+$1/$2}' )
echo $c+$a/$b = $compute3

compute4=$( echo $a $b $c | awk '{print $1%$2+$3}' )
echo $a%$b+$c = $compute4
