# Adding cat pic to homepage on test app
This is a guide on how to add a cat picture to the homepage of the sparta test app using the azure CLI.

1. Start up a virtual machine on Azure with the user data for the app (Don't include pm2 start app.js to avoid blocker)
2. Connect to VM through GitBash
3. Install Azure CLI
```
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
```
4. Login to Azure CLI in the terminal
```
az login
```
5. Copy the link in yellow into web browser and paste in the code in yellow.
6. Select your Azure account 
7. Go back to Git Bash
8. Creating a storage account on Azure using CLI
```
az storage account create \
    --name tech254lukewstorage \
    --resource-group tech254 \
    --location uksouth \
    --sku Standard_ZRS \
```
- You need to have the right permissions/roles to use blob storage
9. Creating a container inside the storage account 
```
az storage container create \
    --account-name tech254lukewstorage \
    --name testcontainer \
    --auth-mode login
```
10. Find an image that you want to have on your homepage and curl into Linux
```
curl <Image URL.jpg> > <filename>
```
11. Uploading a file to the blob storage using Azure CLI
```
az storage blob upload \
    --account-name tech254lukewstorage \
    --container-name testcontainer \
    --name <blobname> \
    --file <filename> \
    --auth-mode login
```
- File is name of file on VM, name is name of file on blob storage.

12. Cd into app/views and nano the index.ejs file
```
sudo nano app/views/index.ejs
```
13. Under the second heading add in the image with the url of the blob on Azure
```
<img src="https://tech254lukewstorage.blob.core.windows.net/testcontainer/catpic.jpeg" />
```
14. Save and go back to app directory
15. Run pm2 and go to webpage url to find new picture.


## Blockers
- When trying to script, can't figure out how to change the image in index.ejs file (Script not working) 
