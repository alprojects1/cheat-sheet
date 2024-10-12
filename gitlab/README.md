## **GitLab**

### **User and Access Management**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `Add SSH Key in GitLab UI`                     | Add your SSH key in GitLab for authentication              |
| `git remote set-url origin git@<gitlab_domain>:<username>/<repo_name>.git` | Set SSH-based GitLab remote URL|
| `Invite Collaborators`                         | Invite users to collaborate on a project via GitLab UI     |
| `Set Permissions`                              | Set user permissions (Guest, Reporter, Developer, Maintainer) in GitLab UI |
| `Remove Users`                                 | Remove users from a project or group via GitLab UI|



### **GitLab Container Registry**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `docker login registry.gitlab.com`             | Log in to GitLab Container Registry                        |
| `docker push registry.gitlab.com/<username>/<project>/<image>:<tag>` | Push Docker image to GitLab Container Registry     |
| `docker pull registry.gitlab.com/<username>/<project>/<image>:<tag>` | Pull Docker image from GitLab Container Registry   |
| `View Container Registry in GitLab UI`         | View and manage container images in the GitLab UI          |



### **Merge Requests and Code Review**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `git checkout -b <feature_branch>`             | Create a new feature branch for the merge request          |
| `git push origin <feature_branch>`             | Push the feature branch to GitLab                          |
| `Create Merge Request in GitLab UI`            | Create a new merge request from the feature branch         |
| `Assign Reviewers`                             | Assign reviewers for code review                           |
| `Resolve Merge Conflicts`                      | Resolve conflicts in a merge request                       |
| `Approve Merge Request`                        | Approve the merge request after reviewing                  |
| `git fetch origin merge-requests/<mr_id>/head:<local_branch_name>` | Check out a merge request locally      |
| `git merge --no-ff <branch>`                   | Merge with no fast-forwarding, preserving history          |



### **GitLab Environment Variables**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `Set Environment Variables in GitLab UI`       | Set environment variables for use in CI/CD pipelines       |
| `Use CI/CD Variables in .gitlab-ci.yml`        | Reference environment variables in the `.gitlab-ci.yml` file |
| `Use Protected Variables`                      | Use protected variables that are only available in protected branches |
| `gitlab-ci-token`                              | CI token used to authenticate and trigger pipelines        |


### **GitLab Security and Compliance**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `Configure SAST in .gitlab-ci.yml`             | Set up Static Application Security Testing (SAST)          |
| `Configure DAST in .gitlab-ci.yml`             | Set up Dynamic Application Security Testing (DAST)         |
| `Configure Dependency Scanning in .gitlab-ci.yml` | Set up Dependency Scanning for your project             |
| `View Vulnerability Report in GitLab UI`       | View vulnerabilities found during security scans           |
| `Resolve Vulnerabilities`                      | Address and resolve security vulnerabilities               |


### **GitLab Pages**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `Configure GitLab Pages`                       | Configure GitLab Pages in `.gitlab-ci.yml` to deploy static sites|
| `Custom Domain for GitLab Pages`               | Set up a custom domain for GitLab Pages                    |
| `TLS Certificates for GitLab Pages`            | Set up TLS certificates for secure GitLab Pages            |
| `Deploy GitLab Pages`                          | Automatically deploy GitLab Pages using the CI/CD pipeline |



### **GitLab CI/CD Pipelines**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `.gitlab-ci.yml`                               | Define CI/CD pipeline stages and jobs in this file         |
| `gitlab-runner register`                       | Register a new GitLab Runner                               |
| `gitlab-runner start`                          | Start the GitLab Runner                                    |
| `gitlab-runner stop`                           | Stop the GitLab Runner                                     |
| `gitlab-runner verify`                         | Verify the GitLab Runner                                   |
| `gitlab-runner unregister`                     | Unregister a GitLab Runner                                 |
| `gitlab-runner list`                           | List all registered GitLab Runners                         |
| `gitlab-runner exec <executor> <job>`          | Execute a CI job locally with a specific executor          |
| `gitlab-runner --help`                         | Show help for GitLab Runner commands                       |


### **GitLab Group and Project Management**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `Create Group in GitLab UI`                    | Create a new group in GitLab                               |
| `Create Project in GitLab UI`                  | Create a new project in GitLab under a group or user       |
| `Add Project to Group`                         | Add a project to a specific group                          |
| `Transfer Project`                             | Transfer a project to another group or user                |
| `Archive Project`                              | Archive a project that is no longer active                 |
| `Fork Project`                                 | Fork an existing project to make independent changes       |
| `Delete Project`                               | Permanently delete a project from GitLab                   |



### **Backup and Restore**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `gitlab-backup create`                         | Create a backup of the GitLab instance                     |
| `gitlab-backup restore BACKUP=timestamp`       | Restore a GitLab instance from a backup                    |
| `gitlab-rake gitlab:check`                     | Check the health of the GitLab instance                    |



### **GitLab Issues and Boards**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `Create Issue in GitLab UI`                    | Create a new issue for your project                        |
| `Assign Issue`                                 | Assign an issue to a specific user                         |
| `Set Due Date`                                 | Set a due date for an issue                                |
| `Use Labels`                                   | Use labels to categorize issues                            |
| `Move Issue to Another Board`                  | Move an issue to a different board                         |
| `Close Issue`                                  | Close an issue when it is resolved                         |

