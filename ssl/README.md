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



## **Additional OpenSSL**

### **Debugging and Testing Certificates**
| Command                                                      | Description                                              |
|--------------------------------------------------------------|----------------------------------------------------------|
| `openssl crl2pkcs7 -nocrl -certfile certificate.crt -out certificate.p7b` | Convert PEM/DER to PKCS#7 (.p7b) format|
| `openssl x509 -noout -modulus -in certificate.crt | openssl md5`          | Check that the modulus of a certificate matches a private key|
| `openssl ocsp -issuer ca.crt -cert certificate.crt -url http://ocsp.responder.url -CAfile ca_bundle.crt` | Check the revocation status of a certificate|

### **CSR and Self-Signed Certificates**
| Command                                                      | Description                                               |
|---------------------------------------------------------------|----------------------------------------------------------|
| `openssl req -newkey rsa:2048 -nodes -keyout private.key -out request.csr` | Generate a new CSR and private key|
| `openssl x509 -req -days 365 -in request.csr -signkey private.key -out selfsigned.crt` | Generate a self-signed certificate|
| `openssl req -x509 -new -nodes -key private.key -sha256 -days 365 -out selfsigned.crt` | Create a new self-signed certificate directly|

### **Encrypting/Decrypting with Symmetric Keys**
| Command                                                      | Description                                              |
|--------------------------------------------------------------|----------------------------------------------------------|
| `openssl enc -aes-256-cbc -salt -in plaintext.txt -out encrypted.enc -k password` | Encrypt a file using AES-256 and password-based encryption|
| `openssl enc -aes-256-cbc -d -in encrypted.enc -out decrypted.txt -k password` | Decrypt a file encrypted using AES-256|

### **Hashes and Digests**
| Command                                                      | Description                                               |
|--------------------------------------------------------------|-----------------------------------------------------------|  
| `openssl dgst -sha1 file.txt`                                | Generate a SHA-1 hash of a file                           |
| `openssl dgst -sha256 -verify public.key -signature file.sig file.txt` | Verify a file’s signature using SHA-256 and a public key|
| `openssl dgst -sha512 -sign private.key -out file.sig file.txt` | Sign a file using SHA-512 and a private key|

### **Certificate Conversion**
| Command                                                      | Description                                              |
|--------------------------------------------------------------|----------------------------------------------------------|
| `openssl x509 -in certificate.pem -out certificate.der -outform DER`  | Convert a PEM certificate to DER format         |
| `openssl x509 -in certificate.der -inform DER -out certificate.pem`  | Convert a DER certificate to PEM format          |
| `openssl pkcs12 -in certificate.pfx -out certificate.pem -nodes`     | Convert a .pfx (PKCS#12) file to PEM             |
| `openssl pkcs12 -in certificate.pfx -out private.key -nocerts -nodes`| Extract private key from .pfx file               |

### **Managing Public/Private Keys**
| Command                                                      | Description                                               |
|---------------------------------------------------------------|----------------------------------------------------------|
| `openssl genrsa -out private.key 2048`                        | Generate a 2048-bit RSA private key                      |
| `openssl ecparam -genkey -name secp384r1 -out private.key`    | Generate an elliptic curve private key                   |
| `openssl ec -in private.key -pubout -out public.key`          | Extract public key from an EC private key                |
| `openssl rsa -in private.key -outform PEM -pubout`            | Convert private key to PEM format                        |

### **Password Management**
| Command                                                      | Description                                               |
|---------------------------------------------------------------|----------------------------------------------------------|
| `openssl passwd -1 -salt xyz password`                        | Generate an MD5 hashed password                          |
| `openssl rand -base64 12`                                     | Generate a 12-character base64 random password           |
| `openssl passwd -6 password`                                  | Generate a SHA-512 hashed password                       |
