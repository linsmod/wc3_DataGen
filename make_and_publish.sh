source makeDatawar3files.sh
cp out/workout/*.* /sn750/data-wc3hostAssets/files/
cp out/workout/*.* /work/DENV/AndroidStudioProjects/wc3dataAnServ/app/src/main/assets/files/
rm /work/DENV/AndroidStudioProjects/wc3dataAnServ/app/src/main/assets/files/7085.json.gz
echo done.

# To publish to android app
# you need copy the files to /work/DENV/AndroidStudioProjects/wc3dataAnServ/app/src/main/assets/files/
# eg. cp out/workout/*.* /work/DENV/AndroidStudioProjects/wc3dataAnServ/app/src/main/assets/files/
# then rebuild the app
