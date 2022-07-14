#! /bin/bash

read -p "Press Enter to create directories..."

mkdir "Paranchych"
mkdir "Paranchych/NNN"
mkdir "Paranchych/OOO"
mkdir "Paranchych/PPP"
mkdir "Paranchych/PPP/GR1"
mkdir "Paranchych/PPP/GR2"

read -p "Press Enter to create files \"Myhailo.txt\" and \"Paranchych.txt\"..."


echo -n DevOps School$'\n'12.07.2022 > "Paranchych/PPP/GR2/Myhailo.txt"
echo -n tradewcs@gmail.com > "Paranchych/PPP/GR2/Paranchych.txt"

read -p "Press Enter to copy files to the root directory..."

cp "Paranchych/PPP/GR2/Myhailo.txt" "Paranchych/"
cp "Paranchych/PPP/GR2/Paranchych.txt" "Paranchych/"

var_res="$(grep -E "^[a-zA-Z0-9_][0-9a-zA-Z\._-]+[a-zA-Z0-9]@[a-zA-Z0-9][a-zA-Z\._-]+\.[a-zA-Z0-9]{2,3}$" Paranchych/Paranchych.txt)"

if [ "$var_res" == "" ]
then
    echo "The email is invalid."
else
    echo "$var_res"
fi
