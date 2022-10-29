#!/bin/bash
#deploy_webapp.sh

TMP_FOLDER_PATH=tmp/phase-two
FILE=schedulinkWebApp.zip
FOLDER=schedulinkWebApp

printf "\n\n"
echo "---- Step 1 Started ----"
printf "\n\n"
echo "---- deleteing all js files,html,map asset files ----"
echo rm -rf *.js *.html *.map asset
rm -rf *.js *.html *.map asset
printf "\n\n"
echo "---- Step 1 Completed ----"


printf "\n\n"
echo "---- Step 2 Started ----"
printf "\n\n"
echo "---- Copying files from folder $TMP_FOLDER_PATH file $FILE to current path----"
echo cp "/$TMP_FOLDER_PATH/$FILE" .
cp "/$TMP_FOLDER_PATH/$FILE" .
echo "---- file copied ----"
printf "\n\n"
echo "---- Step 2 Completed ----"

printf "\n\n"
echo "---- Step 3 Started ----"
printf "\n\n"
echo "---- unzip file $FILE ----"
echo unzip $FILE
unzip $FILE
echo "---- file unzipped ----"
echo "---- giving permission to $FOLDER ----"
echo chmod -R 777 $FOLDER
printf "\n\n"
chmod -R 777 $FOLDER
printf "\n\n"
echo "---- Step 3 Completed ----"

printf "\n\n"
echo "---- Step 4 Started ----"
printf "\n\n"
echo "---- copying files from folder $FOLDER to current path ----"
echo cp -var $FOLDER/* .
cp -var $FOLDER/* .
echo "---- files copied ----"
printf "\n\n"
echo "---- Step 4 Completed ----"

printf "\n\n"
echo "---- Step 5 Started ----"
printf "\n\n"
echo "---- deleting zip file $FILE , folder $FOLDER ----"
echo rm -rf $FILE $FOLDER
rm -rf $FILE $FOLDER
echo "---- files/folder deleted ----"
echo "---- changing permission of current folder ----"
echo chmod -R 775 *
chmod -R 775 *
printf "\n\n"
echo "---- Step 5 Completed ----"


echo "---- build deployed ----"

