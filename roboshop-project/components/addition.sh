#!/bin/bash
n1= "$1"
n2= "$2"
if [ n1 -gt 0 && n2 -gt 0 ];
then Add= "$((n1 + n2))"
echo "Adding the two numbers $Add"
else
  echo "Arguments not given"
fi

