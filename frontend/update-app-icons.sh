#!/bin/bash

# 1. Create Contents.json file for iOS
cat << EOF > ios/App/App/Assets.xcassets/AppIcon.appiconset/Contents.json
{
  "images" : [
    {
      "filename" : "icon-1024.png",
      "idiom" : "universal",
      "platform" : "ios",
      "size" : "1024x1024"
    },
    {
      "filename" : "icon-180.png",
      "idiom" : "iphone",
      "scale" : "3x",
      "size" : "60x60"
    },
    {
      "filename" : "icon-120.png",
      "idiom" : "iphone",
      "scale" : "2x",
      "size" : "60x60"
    },
    {
      "filename" : "icon-167.png",
      "idiom" : "ipad",
      "scale" : "2x",
      "size" : "83.5x83.5"
    },
    {
      "filename" : "icon-152.png",
      "idiom" : "ipad",
      "scale" : "2x",
      "size" : "76x76"
    }
  ],
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}
EOF

echo "Created Contents.json for iOS"

# 2. Copy Android icons
mkdir -p android/app/src/main/res/mipmap-mdpi
mkdir -p android/app/src/main/res/mipmap-hdpi
mkdir -p android/app/src/main/res/mipmap-xhdpi
mkdir -p android/app/src/main/res/mipmap-xxhdpi
mkdir -p android/app/src/main/res/mipmap-xxxhdpi

cp static/icon-48.png android/app/src/main/res/mipmap-mdpi/ic_launcher.png
cp static/icon-72.png android/app/src/main/res/mipmap-hdpi/ic_launcher.png
cp static/icon-96.png android/app/src/main/res/mipmap-xhdpi/ic_launcher.png
cp static/icon-144.png android/app/src/main/res/mipmap-xxhdpi/ic_launcher.png
cp static/icon-192.png android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png

cp static/icon-48.png android/app/src/main/res/mipmap-mdpi/ic_launcher_round.png
cp static/icon-72.png android/app/src/main/res/mipmap-hdpi/ic_launcher_round.png
cp static/icon-96.png android/app/src/main/res/mipmap-xhdpi/ic_launcher_round.png
cp static/icon-144.png android/app/src/main/res/mipmap-xxhdpi/ic_launcher_round.png
cp static/icon-192.png android/app/src/main/res/mipmap-xxxhdpi/ic_launcher_round.png

echo "Copied Android icons"

# 3. Copy iOS icons
cp static/icon-1024.png ios/App/App/Assets.xcassets/AppIcon.appiconset/
cp static/icon-180.png ios/App/App/Assets.xcassets/AppIcon.appiconset/
cp static/icon-120.png ios/App/App/Assets.xcassets/AppIcon.appiconset/
cp static/icon-167.png ios/App/App/Assets.xcassets/AppIcon.appiconset/
cp static/icon-152.png ios/App/App/Assets.xcassets/AppIcon.appiconset/

echo "Copied iOS icons"

echo "App icon update complete!"

