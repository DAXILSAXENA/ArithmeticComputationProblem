#! /bin/bash -x

declare -A result

echo "Enter any three numbers:"

read -p "Enter first number:" a
read -p "Enter second number:" b
read -p "Enter third number:" c

echo "Numbers you entered are:" $a $b $c

compute1=$(( $a + $b * $c ))
echo $a+$b*$c = $compute1

compute2=$(( $a * $b + $c ))
echo $a*$b+$c = $compute2

compute3=$(( $c + $a / $b ))
echo $c+$a/$b = $compute3

compute4=$(( $a % $b + $c ))
echo $a%$b+$c = $compute4

result['compute1']=$compute1
result['compute2']=$compute2
result['compute3']=$compute3
result['compute4']=$compute4
