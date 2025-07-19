#!/bin/bash

# Create the src-tauri/icons directory if it doesn't exist
mkdir -p src-tauri/icons

# Copy and rename the required icons
cp static/icon-1024.png src-tauri/icons/icon.png
cp static/icon-32.png src-tauri/icons/32x32.png
cp static/icon-128.png src-tauri/icons/128x128.png
cp static/icon-128.png src-tauri/icons/128x128@2x.png
cp static/icon-256.png src-tauri/icons/icon.icns
convert static/icon-16.png static/icon-32.png static/icon-48.png static/icon-64.png static/icon-128.png static/icon-256.png src-tauri/icons/icon.ico
#cp static/icon-256.png src-tauri/icons/icon.ico

echo "Icons copied successfully for Tauri!"
