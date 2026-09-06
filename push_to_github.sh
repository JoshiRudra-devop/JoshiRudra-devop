#!/bin/bash
# Script to publish JoshiRudra-devop profile README repository to GitHub

echo "🚀 Preparing to push GitHub Profile README repo to https://github.com/JoshiRudra-devop/JoshiRudra-devop.git..."

git init
git branch -M main
git add README.md
git commit -m "feat: initial graphical profile README for JoshiRudra-devop"

# Check if remote origin already exists
if git remote | grep -q 'origin'; then
  git remote set-url origin https://github.com/JoshiRudra-devop/JoshiRudra-devop.git
else
  git remote add origin https://github.com/JoshiRudra-devop/JoshiRudra-devop.git
fi

echo "Uploading to GitHub..."
git push -u origin main

if [ $? -eq 0 ]; then
  echo "✅ Successfully published your GitHub profile README!"
  echo "🌟 Visit https://github.com/JoshiRudra-devop to view your enhanced profile."
else
  echo "⚠️ Note: Make sure you have created the repository 'JoshiRudra-devop' on GitHub if it doesn't exist yet, or authenticate your git push credentials."
fi
