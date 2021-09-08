#!/bin/bash

a=10
b=xyz
c=true

echo Value of a = $a
echo Value of b = ${b}
echo Value of c = $c

Date=$(date +%F)
echo Welcome Today Date is $Date

Add=$((2+3))
echo Add=$Add


a1=100
a1=200
readonly a1
a1=300




a2=10
b2=(100 101.2 abc)
echo ${b2[0]}
echo ${b2[1]}
echo ${b2[2]}

declare -A a=([class]=devops [trainer]=Raghu [Time]=6amIST)
echo class=${a[class]}
echo Trainer=${a[trainer]}
echo timing=${a[Time]}