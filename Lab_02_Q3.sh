#!/bin/bash
echo -n "Eneter a Positive Number: "
read number
while [ $number -lt 0 ]
do
echo "Please Enter a Positive Number!"
read number
done
i=1
for i in {1..10}
do
table=$((i*number))
echo $number " * " $i " = " $table
done
