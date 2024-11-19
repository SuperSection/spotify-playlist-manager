# Create Spotify Playlists Using Terraform

## Project Overview

This project involves using Terraform to create Spotify playlists for different occasions like morning, evening, party night, etc. Terraform will be used to automate the creation and management of these playlists.

## Prerequisites

1. **Terraform Installed**: Ensure Terraform is installed on your machine.
2. **Docker Installed**: Make sure Docker is installed and running.
3. **Spotify Account**: You need a Spotify account (without premium access)
4. **Spotify Developer Account**: Register and create an application to get the Client ID and Client Secret.
5. **Spotify Provider for Terraform**: Install and configure the Spotify provider for Terraform.
6. **VS Code Editor**: Recommended for editing Terraform files.

## Steps to Use the Project

### 1. Start with App Creation

1. Go to the [Spotify Developer Dashboard](https://developer.spotify.com/dashboard/).
2. Log in with your Spotify account.
3. Click on "Create an App".
4. Fill in the required details and create the app.
    - *Redirect URIs: [http://localhost:27228/spotify_callback](http://localhost:27228/spotify_callback**)

5. Click on Settings and note down the `Client ID` and `Client Secret`.
    

### 2. Create Environment Variables

Create a file named `.env` to store your Spotify application's Client ID and Secret:

```
SPOTIFY_CLIENT_ID=<your_spotify_client_id>
SPOTIFY_CLIENT_SECRET=<your_spotify_client_secret>

```

### 3. Run the Spotify Auth App and Get the API Key

Make sure **Docker Desktop** is running, and start the authorization proxy server:

```bash
cd /path/of/project/folder

docker run --rm -it --name spotify-manager --env-file .env -p 27228:27228 ghcr.io/conradludgate/spotify-auth-proxy
```

- Click on the Auth URL and You should get “Authorization Successful” Message.
- Save the API Key as a variable in `terraform.tfvars` file


### 4. Initialize and Apply Terraform Configuration

1. Initialize the Terraform configuration:
    
    ```
    terraform init
    ```
    
2. Apply the Terraform configuration:
    
    ```
    terraform apply -auto-approve
    ```
    

### 5. Verify Playlists on Spotify

After applying the Terraform configuration, log in to your Spotify account and verify that the playlists have been created and populated with the specified tracks.

## Conclusion

By following these steps, you can automate the creation and management of multiple Spotify playlists using Terraform.