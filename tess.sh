#!/bin/bash

set -e
if [ -z "$1" ]; then
   echo "type: ./tess.sh <repo-url>"
   exit 1
fi

echo "chatbot1 app" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin "$1"
git push -u origin main
