#!/bin/bash
echo "Introduce your commit to be changed hash."

read OGCOMMIT

git checkout $OGCOMMIT

echo "Introduce author <email>"

read AUTHOR
git commit --amend --author "$AUTHOR"
NEWCOMMIT=$(tail -1 .git/logs/HEAD | awk '{print $2}')

echo "Introduce your original branch name"

read BRANCH

git checkout $BRANCH

git replace $OGCOMMIT $NEWCOMMIT

git filter-branch -- --all

git replace -d $OGCOMMIT

git push -f --set-upstream origin $BRANCH
