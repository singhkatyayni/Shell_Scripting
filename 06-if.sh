#! /bin/bash

# string expressions

a=456
if [ $a = 123 ]
then echo OK
fi

if [ $a != 123 ]
then echo NOT OK
fi