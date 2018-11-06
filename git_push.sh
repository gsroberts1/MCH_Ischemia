#!/bin/bash
# GIT PUSH
# Adds files to git staging area, commits files (commits labelled by date and time), and pushes to remote repository.git
cd ~/Documents/MCH\ Ischemia/
git add .
git status
git commit -m "$(date)"
git push -u origin master