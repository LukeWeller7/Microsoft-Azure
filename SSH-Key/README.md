# How to add your SSH key to Azure

1. Generate a new SSH key on your local machine.
   1. Open a new Git Bash terminal
   2. Go to your .ssh folder
   3. Generate a new SSH key `ssh-keygen -t rsa -b 4096 -C "youremail@example.com"`
   4. Enter the name of key to create (Save this for later)
   5. Press enter to skip passphrase
2. Log into Azure portal (https://portal.azure.com/signin/index)
3. In the navigation bar search SSH 
4. Under services select SSH keys
5. Create your SSH key
   1. Select "Create SSH key"
   2. Enter your key name (same as what you named your key in Git Bash)
   3. Select "Upload existing public key"
   4. Paste in your SSH key
   5. Review + Create
   6. Create
