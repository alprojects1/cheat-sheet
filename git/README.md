## **Git**

### **Project and Repository Management**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `git clone <repository_url>`                   | Clone a GitLab repository to your local machine            |
| `git init`                                     | Initialize a new local repository                          |
| `git remote add origin <repository_url>`       | Add a remote repository for your project                   |
| `git push -u origin <branch_name>`             | Push a local branch to GitLab and set upstream tracking    |
| `git pull`                                     | Fetch changes from the remote repository and merge them    |
| `git fetch`                                    | Fetch changes from the remote repository without merging   |
| `git branch`                                   | List all branches                                          |
| `git branch <branch_name>`                     | Create a new branch                                        |
| `git checkout <branch_name>`                   | Switch to a specific branch                                |
| `git checkout -b <branch_name>`                | Create and switch to a new branch                          |
| `git merge <branch_name>`                      | Merge a branch into the current branch                     |
| `git rebase <branch_name>`                     | Rebase the current branch onto another branch              |
| `git push origin --delete <branch_name>`       | Delete a branch in the remote repository                   |
| `git tag <tag_name>`                           | Create a new tag                                           |
| `git push origin <tag_name>`                   | Push a tag to the remote repository                        |
| `git tag -d <tag_name>`                        | Delete a local tag                                         |
| `git push origin :refs/tags/<tag_name>`        | Delete a remote tag                                        |
| `git log`                                      | Show the commit history                                    |
| `git show <commit_hash>`                       | Show the details of a specific commit                      |
| `git diff`                                     | Show changes between commits or working directory changes  |
| `git status`                                   | Show the current status of the working directory           |
