#!/bin/bash
cd C:\Users\nithinsharma.julakan\OneDrive - Cardinal Health\testing 
git init
current_branch = $(git branch)

if [ "$current_branch" = "master" ]; then
	git branch -m main
fi


git remote add origin https://github.com/nithin-julakanti/test.git
git status
git add .
git commit
git push -u origin main

git_status = $(git status)

if [[ $git_status != *"nothing to commit, working tree clean"* ]]; then

	git add .
	git commit -m 'new dags and modified dags are commited"
	git push origin main
fi