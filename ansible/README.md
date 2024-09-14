## **Ansible**

| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `ansible --version`                            | Show the Ansible version and installation details           |
| `ansible-inventory --list`                     | List the hosts and groups in the inventory                  |
| `ansible <host> -m ping`                       | Test the connection to a host using the ping module         |
| `ansible all -m setup`                         | Gather facts from all hosts in the inventory                |
| `ansible all -m copy -a "src=/local/path dest=/remote/path"` | Copy a file from local to remote hosts        |
| `ansible-playbook <playbook.yml>`              | Run a playbook                                              |
| `ansible-vault encrypt <file>`                 | Encrypt a file using Ansible Vault                          |
| `ansible-vault decrypt <file>`                 | Decrypt a previously encrypted file                         |
| `ansible-vault edit <file>`                    | Edit an encrypted file                                      |
| `ansible-doc <module_name>`                    | Display documentation for a specific module                 |


## **Playbook Management**

| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `ansible-playbook <playbook.yml> --check`      | Perform a dry run of the playbook without making changes   |
| `ansible-playbook <playbook.yml> --syntax-check` | Perform a syntax check of the playbook                   |
| `ansible-playbook <playbook.yml> --tags <tag>` | Run only tasks tagged with a specific tag                  |
| `ansible-playbook <playbook.yml> --list-tasks` | List all tasks in the playbook                             |


## **Ad-hoc Commands**

| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `ansible all -a "/bin/echo hello"`             | Run a command on all hosts in the inventory                |
| `ansible all -m yum -a "name=httpd state=present"` | Install Apache on all hosts using the yum module       |
| `ansible all -m service -a "name=httpd state=started"` | Start the Apache service on all hosts              |


## **Inventory Management**

| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `ansible-inventory --graph`                    | Display the inventory graph                                |
| `ansible-inventory --list -i <inventory_file>` | List the inventory in JSON format from a specific file     |
| `ansible-inventory --host <hostname>`          | Show the inventory details for a specific host             |


## **Ansible Vault**

| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `ansible-vault create <file>`                  | Create a new encrypted file                                |
| `ansible-vault encrypt <file>`                 | Encrypt an existing file                                   |
| `ansible-vault decrypt <file>`                 | Decrypt a file                                             |
| `ansible-vault rekey <file>`                   | Change the password for an encrypted file                  |


## **Roles and Galaxy**

| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `ansible-galaxy init <role_name>`              | Create a new role skeleton                                 |
| `ansible-galaxy install <role_name>`           | Install a role from Ansible Galaxy                         |
| `ansible-galaxy list`                          | List all installed roles                                   |
| `ansible-galaxy remove <role_name>`            | Remove an installed role                                   |


