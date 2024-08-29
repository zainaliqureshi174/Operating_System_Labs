#!/bin/bash
echo -n "Enter your Marks: "
read Marks
echo -n "Your Grade: "
case $Marks in
[8-9][0-9]|100) echo "A+";;
[7][5-9]|100) echo "A";;
[7][0-4]|100) echo "A-";;
[6][5-9]|100) echo "B+";;
[6][0-4]|100) echo "B";;
[5][5-9]|100) echo "B-";;
[5][0-4]|100) echo "C+";;
[4][5-9]|100) echo "C";;
[4][0-4]|100) echo "D";;
[0-3][0-9]|100) echo "F";;
*) echo "Invalid Marks:";;
esac
