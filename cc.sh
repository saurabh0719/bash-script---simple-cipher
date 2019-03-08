#!/bin/bash

alphabet=abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz
echo "Press 1 to encrypt and 2 to decrypt your string: "
read choice

if [ $choice -eq 1 ];
then
echo "Enter the string you want to encrypt: "
read arr
echo "Enter the encryption key (1-25): "
read key
newarr=$(echo $arr | tr "${alphabet:0:26}" "${alphabet:${key}:26}")
echo "The encrypted string is: $newarr"
elif [ $choice -eq 2 ];
then 
echo "Enter the string you want to decrypt: "
read arr
echo "Enter the decryption key (1-25): "
read key
key=$(( 26 - $key ))
newarr=$(echo $arr | tr "${alphabet:0:26}" "${alphabet:${key}:26}")
echo "The decrypted string is: $newarr"
else
echo "Wrong choice. Re-run the script."
fi


