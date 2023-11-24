#!/bin/bash

# TESTED - DOES NOT WORK

# Copies the image from Url into Linux
curl https://t3.ftcdn.net/jpg/06/11/33/16/240_F_611331605_Nk5zcWLtcyO8ErLZYlpa3ltzFE5vQ5co.jpg > cat2.jpeg

# Uploads image to blob storage
az storage blob upload \
    --account-name tech254lukewstorage \
    --container-name testcontainer \
    --name catpic2.jpeg \
    --file cat2.jpeg \
    --auth-mode login

# Changing the Homepage to include the picture in index file
sudo sed -i 's/<h2>The app is running correctly.</h2>/<h2>The app is running correctly.</h2>
    <img src="https://tech254lukewstorage.blob.core.windows.net/testcontainer/catpic2.jpeg" />/' /testing_scp_gitclone/app/views/index.ejs

# Kill previous pm2 process
pm2 kill

# Start the app
pms start app.js
