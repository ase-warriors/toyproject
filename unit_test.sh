#!/bin/bash
echo ===BEGIN UNIT TEST===
curl -X GET localhost:8080/ 
ret0=$?
curl -X POST localhost:8080/update 
ret1=$?
curl -X GET localhost:8080/get 
ret2=$?

success=0

if [ $ret0 -eq 0 ]
then
    success=$((success+1))
fi

if [ $ret1 -eq 0 ]
then
    success=$((success+1))
fi

if [ $ret2 -eq 0 ]
then
    success=$((success+1))
fi
echo
echo ===DONE UNIT TEST===
echo $success / 3 successful
