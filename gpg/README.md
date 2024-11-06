## **GPG**

### **Managing Trust and Expiration**
| Command                                                      | Description                                              |
|---------------------------------------------------------------|---------------------------------------------------------|
| `gpg --edit-key <key_id>`                                    | Open a key for editing (change trust level, etc.)        |
| `gpg --edit-key <key_id> expire`                             | Change the expiration date of a key                      |
| `gpg --trust-model always -r <recipient_id> -e file.txt`     | Encrypt a file with a trusted recipient without prompts  |


### **Encrypting and Decrypting Files**
| Command                                                      | Description                                              |
|---------------------------------------------------------------|---------------------------------------------------------|
| `gpg -e -r <recipient_id> file.txt`                          | Encrypt a file for a specified recipient                 |
| `gpg -d file.txt.gpg`                                        | Decrypt an encrypted file                                |
| `gpg -c file.txt`                                            | Encrypt a file with a symmetric cipher (password-based)  |
| `gpg -d file.txt.gpg -o decrypted_file.txt`                  | Decrypt a file and output to a specified file            |


### **Key Management**
| Command                                                      | Description                                              |
|---------------------------------------------------------------|---------------------------------------------------------|
| `gpg --gen-key`                                              | Generate a new GPG key pair                              |
| `gpg --list-keys`                                            | List all public keys in the keyring                      |
| `gpg --list-secret-keys`                                     | List all private keys in the keyring                     |
| `gpg --delete-key <key_id>`                                  | Delete a public key from the keyring                     |
| `gpg --delete-secret-key <key_id>`                           | Delete a private key from the keyring                    |
| `gpg --export -a <key_id> > public_key.asc`                  | Export a public key to a file                            |
| `gpg --export-secret-keys -a <key_id> > private_key.asc`     | Export a private key to a file                           |
| `gpg --import <keyfile>`                                     | Import a public or private key from a file               |


### **Generate and Manage Revocation Certificates**
| Command                                                      | Description                                              |
|---------------------------------------------------------------|---------------------------------------------------------|
| `gpg --output revoke.asc --gen-revoke <key_id>`              | Generate a revocation certificate for a key              |
| `gpg --import revoke.asc`                                    | Import a revocation certificate to revoke a key          |
| `gpg --delete-key <key_id>`                                  | Delete a revoked public key from the keyring             |


### **Keyserver Management**
| Command                                                      | Description                                              |
|---------------------------------------------------------------|---------------------------------------------------------|
| `gpg --keyserver <keyserver_url> --send-keys <key_id>`       | Upload a public key to a keyserver                       |
| `gpg --keyserver <keyserver_url> --recv-keys <key_id>`       | Retrieve a public key from a keyserver                   |
| `gpg --refresh-keys`                                         | Refresh keys from the keyserver                          |


### **Signing and Verifying Files**
| Command                                                      | Description                                              |
|---------------------------------------------------------------|---------------------------------------------------------|
| `gpg --sign file.txt`                                        | Create a digital signature for a file                    |
| `gpg --clearsign file.txt`                                   | Create a clear-text signature for a file                 |
| `gpg --detach-sign file.txt`                                 | Create a detached signature for a file                   |
| `gpg --verify file.txt.gpg`                                  | Verify a signed file                                     |
| `gpg --verify file.sig file.txt`                             | Verify a detached signature against the file             |
