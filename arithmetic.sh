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

count=0
for key in ${!result[*]}
do
        temp=${result[$key]}
        res[((count++))]=$temp
done

echo  [ ${res[*]} ]

for ((i = 0; i<4; i++))
do

    for((j = 0; j<4-i-1; j++))
    do

        if [ ${res[j]} -lt ${res[$((j+1))]} ]
        then
            temp=${res[j]}
            res[$j]=${res[$((j+1))]}
            res[$((j+1))]=$temp
        fi
    done
done

echo "Decending order:"
echo ${res[*]}

for ((i = 0; i<4; i++))
do

    for((j = 0; j<4-i-1; j++))
    do

        if [ ${res[j]} -gt ${res[$((j+1))]} ]
        then
            temp=${res[j]}
            res[$j]=${res[$((j+1))]}
            res[$((j+1))]=$temp
        fi
    done
done

echo "Ascending order:"
echo ${res[*]}
