# set -e

username=combinatorist
repo=resume
new_default_branch=main

git checkout master
git branch -m master main
git checkout main
git push origin main
git push -u origin main
 
curl -i -u $username --header "Content-Type: application/json" \
    https://api.github.com/repos/$username/$repo/branches

curl -i -u $username --header "Content-Type: application/json" \
    --request PATCH --data '{"default_branch": "'$new_default_branch'" }' \
    https://api.github.com/repos/$username/$repo

git push origin :master
