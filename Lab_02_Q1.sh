#!/bin/bash
echo -n "Enter Your Salary: "
read Salary
echo -n "Enter your scale: "
read Scale
if [ $Scale -gt 15 ]; then
Sal=$((Salary/2))
Total_Salary=$((Salary+Sal))
elif [ $Scale -lt 16 ]; then
Sal=$((Salary/4))
Total_Salary=$((Salary+Sal))
fi
echo -n "Your Salary with Bonus: "
echo $Total_Salary
