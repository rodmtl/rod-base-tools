# VS Code & SSH file authentication

**To fix the `git@github.com`: Permission denied (publickey). error on Windows, follow these steps:**

## Step 1: Check for Existing SSH Keys

Open Git Bash or PowerShell.
Check if you already have an SSH key by running:

`ls ~/.ssh`

Look for files named `id_rsa.pub` or `id_ed25519.pub`. If you see such files, you already have an SSH key.

## Step 2: Generate a New SSH Key Pair

If you don't have an SSH key or want to create a new one:

Generate a new SSH key pair by running:

`ssh-keygen -t rsa -b 4096 -C "your_email@example.com"`

Replace `your_email@example.com` with your email address. Press Enter to accept the default file location.

## Step 3: Add SSH Key to ssh-agent

Ensure the ssh-agent is running:

`# Start the ssh-agent in the background
eval $(ssh-agent -s)`

Add your SSH private key to the ssh-agent:

`ssh-add ~/.ssh/id_rsa`

Replace `~/.ssh/id_rsa` with the path to your SSH key if it's different.

## Step 4: Add SSH Key to GitHub Account

1. Copy your SSH public key to the clipboard. For PowerShell, you can use:

    `Get-Content ~/.ssh/id_rsa.pub | Set-Clipboard`

2. Go to GitHub and log in.
3. Click your profile photo, then click Settings.
4. In the user settings sidebar, click SSH and GPG keys.
5. Click New SSH key or Add SSH key.
6. In the "Title" field, add a descriptive label for the new key.
7. Paste your key into the "Key" field.
8. Click Add SSH key.

> After completing these steps, try your Git operation again. If you're still encountering issues, ensure that you're using the SSH URL for your GitHub repository and not the HTTPS URL.
