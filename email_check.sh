#! /bin/bash

emails="$(grep -E "^[a-zA-Z0-9_][0-9a-zA-Z\._-]+[a-zA-Z0-9]@[a-zA-Z0-9][a-zA-Z\._-]+\.[a-zA-Z0-9]{2,3}$" Paranchych/Paranchych.txt)"

if [ "$emails" == "" ]
then
    echo "The email is invalid."
else
    echo "The email is valid."
    echo "$emails"
fi
