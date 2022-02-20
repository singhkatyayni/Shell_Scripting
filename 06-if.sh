#! /bin/bash

# string expressions

a=456
if [ $a = 123 ]
then echo OK
fi

if [ $a != 123 ]
then echo NOT OK
fi

if [ -z "$b"]
then echo B is empty/Not declared variable
fi

c=100
if [ $c -eq 100 ]; then echo OK
elseif [ $c -gt 100 ]; then echo It is greater
fi