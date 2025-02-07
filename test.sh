#!/bin/bash
cd C:\Users\nithinsharma.julakan\Downloads\t1

git init


current_branch=$(git branch)


git branch -M main


git remote | grep -q origin || git remote add origin https://github.com/nithin-julakanti/test.git

git status
git add .
git commit -m "moving the dags"
git push -u origin main

git_status=$(git status)

if [[ $git_status != *"nothing to commit, working tree clean"* ]]; then

    git add .
    git commit -m "new dags and modified dags are committed"
    git push origin main
fi
echo "Successfully, dags have been copied to GitHub"
