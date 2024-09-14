## ***Kubectl***
### **Contexts & Configuration**
| Command                                                                        | Description                                                |
|--------------------------------------------------------------------------------|------------------------------------------------------------|
| `kubectl config set-context <context> --namespace=<namespace> --cluster=<cluster> --user=<user>` | Set all context properties               |
| `kubectl config set-context <context> --namespace=<namespace>`                 | Set the namespace for a context                            |
| `kubectl config set-context <context> --cluster=<cluster>`                     | Set the cluster for a context                              |
| `kubectl config set-context <context> --user=<user>`                           | Set the user for a context                                 |
| `kubectl config use-context <context>`                                         | Change the current context                                 |
| `kubectl config current-context`                                               | Show the current context                                   |
| `kubectl config get-contexts`                                                  | List all contexts in the kubeconfig file                   |
| `kubectl config view`                                                          | Show the current kubeconfig file                           |
| `kubectl config delete-context <context>`                                      | Delete a context                                           |


### **Service Management**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `kubectl get svc`                              | List all services in the current namespace                 |
| `kubectl describe svc <service_name>`          | Show details about a specific service                      |
| `kubectl expose pod <pod_name> --port=<port> --target-port=<container_port>` | Expose a pod as a new service|
| `kubectl expose deployment <deployment_name> --port=<port> --target-port=<container_port>` | Expose a deployment as a service|
| `kubectl delete svc <service_name>`            | Delete a specific service                                  |


### **Secrets and ConfigMaps**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `kubectl get secrets`                          | List all secrets in the current namespace                  |
| `kubectl describe secret <secret_name>`        | Show detailed information about a secret                   |
| `kubectl create secret generic <secret_name> --from-literal=<key>=<value>` | Create a new secret from literal values|
| `kubectl create secret docker-registry <secret_name> --docker-username=<username> --docker-password=<password> --docker-email=<email>` | Create a secret for Docker registry authentication |
| `kubectl delete secret <secret_name>`          | Delete a specific secret                                   |
| `kubectl get configmaps`                       | List all ConfigMaps in the current namespace               |
| `kubectl describe configmap <configmap_name>`  | Show detailed information about a ConfigMap                |
| `kubectl create configmap <configmap_name> --from-file=<file_path>` | Create a ConfigMap from a file        |
| `kubectl delete configmap <configmap_name>`    | Delete a specific ConfigMap                                |



### **Access Control and RBAC**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `kubectl get roles`                            | List all roles in the current namespace                    |
| `kubectl describe role <role_name>`            | Show detailed information about a role                     |
| `kubectl create role <role_name> --verb=get,list --resource=pods` | Create a role with specific permissions |
| `kubectl delete role <role_name>`              | Delete a specific role                                     |
| `kubectl get rolebindings`                     | List all role bindings in the current namespace            |
| `kubectl describe rolebinding <rolebinding_name>` | Show details about a role binding                       |
| `kubectl create rolebinding <rolebinding_name> --role=<role_name> --user=<user_name>` | Bind a role to a user|
| `kubectl delete rolebinding <rolebinding_name>`| Delete a specific role binding                             |




### **Cluster Management**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `kubectl cluster-info`                         | Display addresses of the master and services               |
| `kubectl get nodes`                            | List all nodes in the cluster                              |
| `kubectl describe node <node_name>`            | Show details about a specific node                         |
| `kubectl cordon <node_name>`                   | Mark a node as unschedulable                               |
| `kubectl uncordon <node_name>`                 | Mark a node as schedulable again                           |
| `kubectl drain <node_name>`                    | Drain a node in preparation for maintenance                |
| `kubectl get namespaces`                       | List all namespaces in the cluster                         |
| `kubectl get services`                         | List all services in the cluster                           |
| `kubectl describe service <service_name>`      | Show detailed information about a service                  |
| `kubectl get endpoints`                        | List all endpoints in the cluster                          |
| `kubectl describe endpoints <service_name>`    | Show details about the endpoints of a service              |
| `kubectl get deployments`                      | List all deployments in the cluster                        |
| `kubectl describe deployment <deployment_name>`| Show details about a specific deployment                   |
| `kubectl scale deployment <deployment_name> --replicas=<number>` | Scale a deployment to a specified number of replicas|
| `kubectl rollout status deployment/<deployment_name>` | Check the status of a deployment rollout            |
| `kubectl get events`                           | List all events in the cluster                             |
| `kubectl top node`                             | Display resource (CPU/memory) usage of nodes               |
| `kubectl top pod`                              | Display resource (CPU/memory) usage of pods                |



### **Namespace Management**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `kubectl create namespace <namespace_name>`    | Create a new namespace                                     |
| `kubectl delete namespace <namespace_name>`    | Delete a namespace                                         |
| `kubectl get namespaces`                       | List all namespaces in the cluster                         |
| `kubectl config set-context --current --namespace=<namespace>` | Set the default namespace for the current context|


### **Pod Management**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `kubectl get pods`                             | List all pods in the current namespace                     |
| `kubectl get pods --all-namespaces`            | List all pods in all namespaces                            |
| `kubectl describe pod <pod_name>`              | Show details about a specific pod                          |
| `kubectl logs <pod_name>`                      | Show logs from a specific pod                              |
| `kubectl logs <pod_name> -c <container_name>`  | Show logs from a specific container in a pod               |
| `kubectl exec -it <pod_name> -- <command>`     | Execute a command in a running pod                         |
| `kubectl port-forward <pod_name> <local_port>:<pod_port>` | Forward a port from a pod to your local machine |
| `kubectl delete pod <pod_name>`                | Delete a specific pod                                      |
| `kubectl get pod <pod_name> -o yaml`           | Get the detailed YAML description of a specific pod        |
| `kubectl attach <pod_name> -c <container_name>`| Attach to a running container inside a pod                 |
| `kubectl exec <pod_name> --kill -s <signal>`   | Send a signal to a container in a pod                      |


### **Resource Management**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `kubectl get <resource>`                       | List all resources of a specific type                      |
| `kubectl describe <resource> <name>`           | Show detailed information about a specific resource        |
| `kubectl edit <resource> <name>`               | Edit a resource                                            |
| `kubectl delete <resource> <name>`             | Delete a specific resource                                 |
| `kubectl apply -f <file>`                      | Apply a configuration file                                 |
| `kubectl delete -f <file>`                     | Delete resources from a configuration file                 |
| `kubectl create -f <file>`                     | Create resources from a configuration file                 |
| `kubectl patch <resource> <name> --patch <json_patch>` | Apply a patch to a resource                        |
| `kubectl rollout restart deployment/<deployment_name>` | Restart a deployment                               |


