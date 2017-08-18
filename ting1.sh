#!/bin/sh
read ar1
read ar2
if [ "$ar1" = "$ar2" ]
then
echo "$ar1 = $ar2"
else
echo "$ar1 != $ar2"
fi
