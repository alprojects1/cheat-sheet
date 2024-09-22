## **PowerShell Cheat-Sheet**



### **User and System Management**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `Get-LocalUser`                                | List all local users                                       |
| `New-LocalUser <username> -Password (ConvertTo-SecureString "<password>" -AsPlainText -Force)` | Create a new local user|
| `Remove-LocalUser <username>`                  | Remove a local user                                        |
| `Get-LocalGroup`                               | List all local groups                                      |
| `Add-LocalGroupMember -Group "<group>" -Member "<username>"` | Add a user to a local group                  |
| `Remove-LocalGroupMember -Group "<group>" -Member "<username>"` | Remove a user from a local group          |



### **PowerShell Remoting**
| Command                                        | Description                                                 |
|------------------------------------------------|------------------------------------------------------------ |
| `Enable-PSRemoting`                            | Enable PowerShell remoting                                  |
| `Enter-PSSession <hostname>`                   | Start an interactive session with a remote machine          |
| `Exit-PSSession`                               | End an interactive session                                  |
| `Invoke-Command -ComputerName <hostname> -ScriptBlock { <commands> }` | Run a script block on a remote computer|




### **Basic Cmdlets**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `Get-Help`                                     | Display help for a cmdlet                                  |
| `Get-Command`                                  | List all available cmdlets                                 |
| `Get-Process`                                  | Display running processes                                  |
| `Get-Service`                                  | List all services                                          |
| `Start-Service <service_name>`                 | Start a service                                            |
| `Stop-Service <service_name>`                  | Stop a service                                             |
| `Restart-Service <service_name>`               | Restart a service                                          |
| `Get-EventLog -LogName <logname>`              | Get event log data (e.g., System, Application)             |
| `Clear-EventLog -LogName <logname>`            | Clear event log                                            |
| `Get-ChildItem`                                | List files and directories (alias: `ls` or `dir`)          |
| `Get-Item <path>`                              | Get information about a file or directory                  |
| `Set-Location <path>`                          | Change directory (alias: `cd`)                             |
| `Copy-Item <source> <destination>`             | Copy a file or directory                                   |
| `Move-Item <source> <destination>`             | Move a file or directory                                   |
| `Remove-Item <path>`                           | Delete a file or directory                                 |
| `New-Item -Path <path> -ItemType <file/directory>` | Create a new file or directory                         |
| `Rename-Item <old_name> <new_name>`            | Rename a file or directory                                 |



### **Task Management**
| Command                                        | Description                                                 |
|------------------------------------------------|------------------------------------------------------------ |
| `Get-Process`                                  | List running processes                                      |
| `Start-Process <program>`                      | Start a new process (e.g., `Start-Process notepad.exe`)     |
| `Stop-Process -Name <process_name>`            | Stop a running process                                      |
| `Get-Service`                                  | List all services                                           |
| `Start-Service <service_name>`                 | Start a service                                             |
| `Stop-Service <service_name>`                  | Stop a service                                              |
| `Restart-Service <service_name>`               | Restart a service                                           |


### **System Information**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `Get-WmiObject -Class Win32_OperatingSystem`   | Get information about the operating system                 |
| `Get-WmiObject -Class Win32_ComputerSystem`    | Get information about the computer system                  |
| `Get-WmiObject -Class Win32_Processor`         | Get processor information                                  |
| `Get-WmiObject -Class Win32_BIOS`              | Get BIOS information                                       |
| `Get-WmiObject -Class Win32_DiskDrive`         | Get disk drive information                                 |
| `Get-WmiObject -Class Win32_LogicalDisk`       | Get logical disk information                               |
| `Get-WmiObject -Class Win32_NetworkAdapter`    | Get network adapter information                            |
| `Get-WmiObject -Class Win32_Share`             | List shared folders                                        |



### **Control Flow**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `if (<condition>) { <code> }`                  | Conditional statement                                      |
| `else { <code> }`                              | Else clause for an if statement                            |
| `elseif (<condition>) { <code> }`              | Elseif clause                                              |
| `foreach ($item in $collection) { <code> }`    | Loop through a collection                                  |
| `for ($i = 0; $i -lt 10; $i++) { <code> }`     | Standard for loop                                          |
| `while (<condition>) { <code> }`               | Loop while a condition is true                             |
| `do { <code> } while (<condition>)`            | Do while loop                                              |
| `switch (<value>) { <cases> }`                 | Switch statement                                           |
| `break`                                        | Exit a loop or switch                                      |
| `continue`                                     | Skip to the next iteration of a loop                       |
| `return`                                       | Return a value from a function                             |



### **Networking**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `Test-Connection <host>`                       | Ping a host (alias: `ping`)                                |
| `Test-NetConnection <host>`                    | Test a network connection (e.g., port test)                |
| `Get-NetIPAddress`                             | Get IP addresses for the system                            |
| `Get-NetAdapter`                               | List network adapters                                      |
| `Enable-NetAdapter -Name <name>`               | Enable a network adapter                                   |
| `Disable-NetAdapter -Name <name>`              | Disable a network adapter                                  |



### **Modules**
| Command                                        | Description                                                 |
|------------------------------------------------|------------------------------------------------------------ |
| `Get-Module`                                   | List all loaded modules                                     |
| `Import-Module <module_name>`                  | Import a module                                             |
| `Remove-Module <module_name>`                  | Remove a loaded module                                      |
| `Find-Module <module_name>`                    | Find a module in the PowerShell Gallery                     |
| `Install-Module <module_name>`                 | Install a module from the PowerShell Gallery                |



### **Pipelines and Output**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `|`                                            | Pass output from one cmdlet to another                     |
| `Out-File <filename>`                          | Send output to a file                                      |
| `Out-Host`                                     | Send output to the console (default behavior)              |
| `Out-Null`                                     | Suppress output                                            |
| `Export-Csv <filename>`                        | Export data to a CSV file                                  |
| `ConvertTo-Html`                               | Convert output to HTML format                              |
| `Format-Table`                                 | Format output as a table                                   |
| `Format-List`                                  | Format output as a list                                    |



### **File and Text Manipulation**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `Get-Content <file>`                           | Read the contents of a file                                |
| `Set-Content <file> <content>`                 | Write content to a file                                    |
| `Add-Content <file> <content>`                 | Append content to a file                                   |
| `Clear-Content <file>`                         | Clear the contents of a file                               |
| `Select-String <pattern> <file>`               | Search for text in a file                                  |
| `Rename-Item <old_name> <new_name>`            | Rename a file or directory                                 |
| `Remove-Item <file>`                           | Delete a file                                              |



### **Working with Variables**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `$variable = <value>`                          | Create or set a variable                                   |
| `$variable += <value>`                         | Add to an existing variable                                |
| `Get-Variable`                                 | List all variables                                         |
| `Remove-Variable <variable>`                   | Remove a variable                                          |
| `Clear-Variable <variable>`                    | Clear a variable’s value                                   |
| `$env:<variable_name>`                         | Access environment variables                               |

### **Scripting**
| Command                                        | Description                                                 |
|------------------------------------------------|------------------------------------------------------------ | 
| `Write-Host <message>`                         | Output a message to the console                             |
| `Read-Host <prompt>`                           | Read user input                                             |
| `Start-Sleep <seconds>`                        | Pause the script for a specified time                       |
| `Write-Output <value>`                         | Send output


### **Functions**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `function <name> { <code> }`                   | Define a function                                          |
| `param (<parameter_list>)`                     | Define function parameters                                 |
| `<name> <argument_list>`                       | Call a function                                            |




### **Aliases**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `Get-Alias`                                    | List all aliases                                           |
| `Set-Alias <alias> <cmdlet>`                   | Create a new alias                                         |
| `Remove-Alias <alias>`                         | Remove an alias                                            |
