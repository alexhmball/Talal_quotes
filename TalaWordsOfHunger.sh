#!/bin/bash

hangry=(
	"Everything Between Talal and food is considered food."
	"Talal doesn't wait for food, food waits for Talal."
	"Talal can smell salt."
	"Talal yells at Gordon Ramsay."
	"Talal thinks outside the box because he ate the box."
	"Talal calls Uncle Roger nephew."
	"Talal eats so much, he once made a buffet surrender!"
	"Talal doesn't eat to live, he lives to eat."
	"When Talal eats a meal, the flavors tremble in fear, knowing they'll never taste as good again!"
	"When Talal orders a meal, the chefs consider it a masterclass."
	"Talal can name every ingredient in a dish just by smelling it."
	"Talal's food cravings are so unstoppable, even the 'Do Not Eat' signs fear him!"
	"When Bart Simpson says Eat my shorts, Talal does it."
	"Talal doesn't eat, he consumes"
	"There are only 16 colours in IRC... Talal ate the rest."
	"Mukalla tuna is the only tuna."
)

full=(
	"You're lucky, Talal just ate."
	"Talal is to life what MSG is to food."
	"Talal packs his mom's lunch."
	"Sugar, spice, and everything nice, These were the ingreidents chosen to create Talal."
)


check=$(date | awk '{print substr($5,3,1)}')

if [ $check = ":" ]
then
	declare -i choice=$(date | awk '{print substr($5,7,2)}')
else
	declare -i choice=$(date | awk '{print substr($4,7,2)}')
fi

choice=$[ $choice % 2 ]
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if [ $choice  -eq 0 ]
then
	cat $SCRIPT_DIR/HAPPY.ans
	echo
	echo "Good news.."
	Talal=${full[ $RANDOM % ${#full[@]} ]}
	echo $Talal
else
	cat $SCRIPT_DIR/HUNGER.ans
	echo
	echo "Beware ..."
	Talal=${hangry[ $RANDOM % ${#hangry[@]} ]}
	echo $Talal
fi
