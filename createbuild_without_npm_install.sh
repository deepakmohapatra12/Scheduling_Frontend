#!/bin/bash

FILE=dist/schedulinkWebApp.zip
SERVER=houmsap1.oii.oceaneering.com
TMP_FOLDER_PATH=tmp/phase-two


printf "\n\n"
echo "---- Step 1 Started ----"
printf "\n\n"
echo "---- skipping dependencies ----"
printf "\n\n"
# Install dependencies
# echo npm install
printf "\n\n"
echo "---- Step 1 Completed ----"
printf "\n\n"



echo "---- Step 2 Started ----"
printf "\n\n"
echo "---- createing build with --prod ----"
printf "\n\n"
#create build-- prod
echo ng build --prod
ng build --prod
printf "\n\n"
echo "---- Step 2 Completed ----"
printf "\n\n"




echo "---- Step 3 Started ----"
printf "\n\n"
echo "---- Checking if schedulinkWebApp.zip exists ----"
if [[ -f "$FILE" ]]; then
    echo "---- $FILE exist ----"
    echo "---- Deleting file schedulinkWebApp.zip ----"
    echo powershell Remove-Item -path 'dist\schedulinkWebApp.zip'
    powershell Remove-Item -path 'dist\schedulinkWebApp.zip'

else
   echo "---- File schedulinkWebApp.zip doesn't exist ----"
fi
printf "\n\n"
echo "---- Step 3 Completed ----"
printf "\n\n"


echo "---- Step 4 Started ----"
printf "\n\n"
echo "---- creating zip file of schedulinkWebApp folder  ----"
# creating zip file of schedulinkWebApp folder
echo powershell Compress-Archive -LiteralPath 'dist\schedulinkWebApp' -DestinationPath "dist\schedulinkWebApp.zip" -Force -CompressionLevel Fastest
powershell Compress-Archive -LiteralPath 'dist\schedulinkWebApp' -DestinationPath "dist\schedulinkWebApp.zip" -Force -CompressionLevel Fastest
printf "\n\n"
echo "---- Step 4 Completed ----"
printf "\n\n"



echo "---- Step 5 Started ----"
printf "\n\n"
echo "---- Uploading build file $FILE to server $SERVER inside $TMP_FOLDER_PATH ----"
read -p 'username-prv: ' username
scp "$FILE" "$username@$SERVER:/$TMP_FOLDER_PATH"
# scp "$FILE" $username@houmsap1.oii.oceaneering.com:/tmp/phase-two
echo "---- File uploaded ----"
printf "\n\n"
echo "---- Step 5 Completed ----"
printf "\n\n"

echo "---- build completed ----"
