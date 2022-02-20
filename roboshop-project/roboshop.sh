#! /bin/bash

if [ -f components/$1.sh ]; then
 bash components/$1.sh
else
  echo "Wrong input"
  echo "Available inputs : frontend|shipping|payment|cart|catalogue|rabbitmq|redis|user|dispatch|mongodb|mysql"
fi