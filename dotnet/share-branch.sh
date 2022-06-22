#!/bin/bash +x

# This is a Sabio script to create a branch in your local Git repository and then automatically push it to the server.
# The working directory will stay dirty.

user_name=$(git config user.name)
if [ "$user_name" == "" ]; then
	echo "ERROR: You must set Git's user.name"
	exit 1
fi

set -e

has_unmerged=$(git ls-files -t | grep '^M' |  wc -l)

if [ $has_unmerged != 0 ]; then
	echo "ERROR: cannot continue. You have unmerged enteries in your Git staging area. Please fix them and re-run this script."
	exit 1
fi

username=$(git config user.name | perl -ne 'chomp; s/\s+/-/g; s/[^-A-Z]//ig; print lc')
date=$(date +"%Y%m%d-%H%M%S")
branch="$username/$date"

dirt_count=$(git status --short | wc -l)
if [ $dirt_count != 0 ]; then
	git add -A
fi

git commit --allow-empty || exit 1
git checkout -b $branch
git push origin HEAD
git checkout -
git reset HEAD^

origin_url=$(git remote get-url origin)
escaped_branch=$(echo $branch | perl -MURI::Escape -ne 'chomp; print uri_escape($_)')
echo
echo If you ran this script by mistake and want to delete your server branch:
echo git push origin :$branch
echo 
echo Your branch can be viewed online at:
echo $origin_url?version=GB$escaped_branch
echo Done!
