## **user filter branch to fix**

```sh
git filter-branch --env-filter '
WRONG_EMAIL="alporjects1@proton.me"
NEW_NAME="alprojects1"
NEW_EMAIL="alprojects1@proton.me"

if [ "$GIT_COMMITTER_EMAIL" = "$WRONG_EMAIL" ]
then
    export GIT_COMMITTER_NAME="$NEW_NAME"
    export GIT_COMMITTER_EMAIL="$NEW_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$WRONG_EMAIL" ]
then
    export GIT_AUTHOR_NAME="$NEW_NAME"
    export GIT_AUTHOR_EMAIL="$NEW_EMAIL"
fi
' -- --all
```
## **force push to all branches & tags**

```sh
  git push --force --tags origin 'refs/heads/*'
```
