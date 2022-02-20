#! /bin/bash

if [ -f components/$1.sh ]; then
 bash components/$1.sh
else
  echo -e "\e[1;31mInavlid input\e[0m"
  echo -e "\e[1;33mAvailable inputs : frontend|shipping|payment|cart|catalogue|rabbitmq|redis|user|dispatch|mongodb|mysql\e[0m"
fi