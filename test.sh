#!/bin/bash

echo -n "Enter a number: "
read VAR

if [[ $VAR == *"-"* ]];
then
  echo "------."
else
  echo "*******"
fi