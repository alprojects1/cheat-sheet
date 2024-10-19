## **OpenSSL**

### **SSL Certificate Management**
| Command                                                      | Description                                               | 
|---------------------------------------------------------------|----------------------------------------------------------|
| `openssl genpkey -algorithm RSA -out private.key`             | Generate a new RSA private key                           |
| `openssl req -new -key private.key -out request.csr`          | Create a certificate signing request (CSR)               |
| `openssl x509 -req -days 365 -in request.csr -signkey private.key -out certificate.crt` | Sign the CSR with the private key to create a certificate|
| `openssl pkcs12 -export -out certificate.pfx -inkey private.key -in certificate.crt` | Convert private key and certificate into a .pfx file|
| `openssl x509 -in certificate.crt -text -noout`               | View details of a certificate                            |
| `openssl verify -CAfile ca_bundle.crt certificate.crt`        | Verify a certificate against a CA bundle                 |

### **Key Management**
| Command                                                      | Description                                               |
|---------------------------------------------------------------|----------------------------------------------------------|
| `openssl rsa -in private.key -pubout -out public.key`         | Extract the public key from a private key                |
| `openssl genpkey -algorithm RSA -out private.key -aes256`     | Generate an encrypted private key using AES256           |
| `openssl pkey -in private.key -text`                          | Display the private key details                          |
| `openssl rsa -in private.key -check`                          | Check the consistency of the RSA private key             |

### **SSL/TLS Testing**
| Command                                                      | Description                                               |
|---------------------------------------------------------------|----------------------------------------------------------|
| `openssl s_client -connect <hostname>:443`                    | Test SSL/TLS connection to a remote server               |
| `openssl s_client -starttls smtp -connect <hostname>:25`      | Test SSL/TLS via STARTTLS for SMTP                       |
| `openssl s_client -showcerts -connect <hostname>:443`         | Retrieve and display the SSL certificate chain           |
| `openssl s_time -connect <hostname>:443`                      | Benchmark the SSL handshake time                         |

### **Encrypt/Decrypt**
| Command                                                      | Description                                               |
|---------------------------------------------------------------|----------------------------------------------------------|
| `openssl enc -aes-256-cbc -salt -in file.txt -out file.enc`   | Encrypt a file using AES256                              |
| `openssl enc -d -aes-256-cbc -in file.enc -out file.txt`      | Decrypt a file encrypted with AES256                     |
| `openssl dgst -sha256 file.txt`                               | Generate SHA-256 hash of a file                          |
| `openssl rand -hex 32`                                        | Generate a random 32-byte hex string                     |

