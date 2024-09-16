## **Phoronix Test Suite**



### **Utilities**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `phoronix-test-suite gui`                      | Launch the GUI version of the Phoronix Test Suite          |
| `phoronix-test-suite phx-results-viewer`       | Launch the graphical results viewer                        |
| `phoronix-test-suite result-file-info <result_file>` | Display details about a result file                  |


### **OpenBenchmarking.org Integration**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `phoronix-test-suite openbenchmarking`         | Upload results to OpenBenchmarking.org                     |
| `phoronix-test-suite openbenchmarking-run`     | Run tests on OpenBenchmarking.org                          |
| `phoronix-test-suite benchmark-id <id>`        | Run a benchmark test using an OpenBenchmarking.org ID      |


### **Testing Parameters**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `phoronix-test-suite set-test-parameter <parameter> <value>` | Set a parameter for a specific test          |
| `phoronix-test-suite show-test-parameters <test_name>` | Show the parameters for a specific test            |


### **Automated Testing and Scripting**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `phoronix-test-suite batch-setup`              | Setup the Phoronix Test Suite for automated testing        |
| `phoronix-test-suite batch-run <test_name>`    | Run a test automatically without user intervention         |
| `phoronix-test-suite repeat <count> <test_name>` | Run a test multiple times                                |


### **Benchmark Results**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `phoronix-test-suite result-file-to-pdf <result_file>` | Convert a test result to a PDF format              |
| `phoronix-test-suite list-results`             | List all saved results                                     |
| `phoronix-test-suite result-file-info <result_file>` | View detailed information about a result file        |
| `phoronix-test-suite remove-result <result_file>`| Remove a specific result file                            |
| `phoronix-test-suite upload-result <result_file>` | Upload the result to OpenBenchmarking.org               |
| `phoronix-test-suite merge-results <file1> <file2>` | Merge two result files                                |
| `phoronix-test-suite view-result <result_file>` | View a specific result                                    |


### **Test Execution**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `phoronix-test-suite run`                      | Run an interactive test                                    |
| `phoronix-test-suite batch-run <test_name>`    | Run a non-interactive test with default options            |
| `phoronix-test-suite batch-run <suite_name>`   | Run a non-interactive suite                                |
| `phoronix-test-suite repeat <count> <test_name>`| Repeat a test a specific number of times                  |


### **Benchmark and Comparison**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `phoronix-test-suite benchmark`                | Benchmark a test or suite interactively                    |
| `phoronix-test-suite compare <result1> <result2>` | Compare two result files                                |
| `phoronix-test-suite compare-results`          | Compare the results of multiple tests                      |
| `phoronix-test-suite show-comparison <comparison_file>` | Show a comparison in detail                       |


### **Suites and Profiles**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `phoronix-test-suite list-suites`              | List all available test suites                             |
| `phoronix-test-suite run <suite_name>`         | Run a test suite                                           |
| `phoronix-test-suite run <suite_name> --suite-validation` | Validate the suite configuration                |
| `phoronix-test-suite list-installed-suites`    | List all installed suites                                  |


### **Remote Testing**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `phoronix-test-suite remote`                   | Setup for remote Phoronix Test Suite usage                 |
| `phoronix-test-suite remote-run`               | Run a test remotely                                        |
| `phoronix-test-suite remote-list`              | List available remote systems                              |
| `phoronix-test-suite remote-connect <ip>`      | Connect to a remote system                                 |


### **Basic Commands**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `phoronix-test-suite list-available-tests`     | List all available tests                                   |
| `phoronix-test-suite list-available-suites`    | List all available test suites                             |
| `phoronix-test-suite list-installed-tests`     | List all installed tests                                   |
| `phoronix-test-suite install <test_name>`      | Install a specific test                                    |
| `phoronix-test-suite remove <test_name>`       | Remove a specific test                                     |
| `phoronix-test-suite run <test_name>`          | Run a specific test                                        |
| `phoronix-test-suite run <suite_name>`         | Run a test suite                                           |
| `phoronix-test-suite run <test_name> <option>` | Run a specific test with options                           |
| `phoronix-test-suite help`                     | Show help information                                      |


### **Hardware and System Info**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `phoronix-test-suite system-info`              | View detailed system information                           |
| `phoronix-test-suite show-installed-tests`     | Show all installed tests and versions                      |


### **Custom Options and Preferences**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `phoronix-test-suite open-config`              | Open the configuration file for editing                    |
| `phoronix-test-suite set-options`              | Set custom test or global options                          |
| `phoronix-test-suite reset-options`            | Reset options to default                                   |


### **Test Creation**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `phoronix-test-suite test-create`              | Create a new custom test                                   |
| `phoronix-test-suite test-edit`                | Edit an existing test                                      |
| `phoronix-test-suite test-remove`              | Remove a custom test                                       |
