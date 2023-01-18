#!/bin/zsh

# building page
hugo

cd public
git add .

msg="Add publication"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# push to public repository
git push origin HEAD:master

# push to source repository
cd ..
git add .
git commit -m "$msg"
git push
