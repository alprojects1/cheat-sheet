### **Kestra Task Management**
| Command                         | Description                                                                   |
|----------------------------------|-------------------------------------------------------------------------------|
| `kestra task create <file>`      | Create a task from a YAML file.                                                |
| `kestra task run <task_id>`      | Manually run a specific task.                                                  |
| `kestra task list`               | List all tasks available in the system.                                        |


### **Google Cloud Integration**
| Command                         | Description                                                                   |
|----------------------------------|-------------------------------------------------------------------------------|
| `kestra gcs list`                | List objects in a Google Cloud Storage bucket.                                |
| `kestra gcs download <object>`   | Download an object from a Google Cloud Storage bucket.                        |
| `kestra gcs upload <file>`       | Upload a file to a Google Cloud Storage bucket.                               |
| `kestra bigquery query`          | Run a BigQuery query.                                                         |
| `kestra bigquery load`           | Load data into a BigQuery table.                                               |
| `kestra pubsub publish`          | Publish a message to a Google Cloud Pub/Sub topic.                            |
| `kestra pubsub consume`          | Consume messages from a Pub/Sub subscription.                                  |


### **Elasticsearch Integration**
| Command                         | Description                                                                   |
|----------------------------------|-------------------------------------------------------------------------------|
| `kestra es search`               | Perform a search query on an Elasticsearch cluster.                           |
| `kestra es index`                | Index a document in Elasticsearch.                                            |
| `kestra es bulk`                 | Perform a bulk operation in Elasticsearch.                                    |
| `kestra es scroll`               | Scroll through search results for large datasets.                             |


### **Git Integration**
| Command                         | Description                                                                   |
|----------------------------------|-------------------------------------------------------------------------------|
| `kestra git clone <repo_url>`    | Clone a Git repository to the local machine.                                  |
| `kestra git pull`                | Pull the latest changes from a Git repository.                                |
| `kestra git push`                | Push local commits to the remote Git repository.                              |


### **Docker Integration**
| Command                         | Description                                                                   |
|----------------------------------|-------------------------------------------------------------------------------|
| `kestra docker build <path>`     | Build a Docker image from a specified path.                                   |
| `kestra docker push <image>`     | Push a Docker image to a remote repository.                                   |
| `kestra docker run <image>`      | Run a Docker container from a specified image.                                |


### **Debezium Integration (PostgreSQL/MySQL)**
| Command                         | Description                                                                   |
|----------------------------------|-------------------------------------------------------------------------------|
| `kestra debezium capture`        | Capture changes from a PostgreSQL or MySQL database using Debezium.            |
| `kestra debezium trigger`        | Trigger actions based on database change events.                               |


### **SFTP Integration**
| Command                         | Description                                                                   |
|----------------------------------|-------------------------------------------------------------------------------|
| `kestra sftp upload <file>`      | Upload a file to an SFTP server.                                               |
| `kestra sftp download <file>`    | Download a file from an SFTP server.                                           |
| `kestra sftp list <path>`        | List files in a directory on the SFTP server.                                  |


### **FTPS Integration**
| Command                         | Description                                                                   |
|----------------------------------|-------------------------------------------------------------------------------|
| `kestra ftps upload <file>`      | Upload a file to an FTPS server.                                               |
| `kestra ftps download <file>`    | Download a file from an FTPS server.                                           |
| `kestra ftps list <path>`        | List files in a directory on the FTPS server.                                  |


### **Fivetran Integration**
| Command                         | Description                                                                   |
|----------------------------------|-------------------------------------------------------------------------------|
| `kestra fivetran sync <connector_id>` | Start a sync operation for a specific Fivetran connector.                |
| `kestra fivetran status <connector_id>` | Check the sync status of a Fivetran connector.                          |


### **Dbt Integration**
| Command                         | Description                                                                   |
|----------------------------------|-------------------------------------------------------------------------------|
| `kestra dbt run`                 | Run a DBT model.                                                              |
| `kestra dbt test`                | Run tests in a DBT project.                                                    |
| `kestra dbt compile`             | Compile DBT models without running them.                                       |


### **Common Miscellaneous Commands**
| Command                         | Description                                                                   |
|----------------------------------|-------------------------------------------------------------------------------|
| `kestra encrypt <data>`          | Encrypt sensitive data using Kestra's built-in encryption tool.               |
| `kestra decrypt <data>`          | Decrypt previously encrypted data.                                            |
| `kestra http request`            | Make an HTTP request from a Kestra task.                                      |
| `kestra ssh command <cmd>`       | Run a command on a remote server via SSH.                                     |
