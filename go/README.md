### **Cross Compilation**
| Command                                     | Description                                                   |
|---------------------------------------------|---------------------------------------------------------------|
| `GOOS=linux GOARCH=amd64 go build`          | Compile for Linux on AMD64 architecture                       |
| `GOOS=windows GOARCH=amd64 go build`        | Compile for Windows on AMD64 architecture                     |
| `GOOS=darwin GOARCH=arm64 go build`         | Compile for macOS on ARM64 architecture                       |
| `GOARCH=arm64 go build`                     | Compile for ARM64 architecture (general use)                  |
| `GOOS=linux GOARCH=arm GOARM=7 go build`    | Cross-compile for ARMv7 architecture (Raspberry Pi)           |


### **Running and Debugging**
| Command                                     | Description                                                   |
|---------------------------------------------|---------------------------------------------------------------|
| `go run -race example.go`                   | Run the program with race detection                           |
| `go run -gcflags "-N -l" example.go`        | Run the program without optimizations for debugging           |
| `dlv debug example.go`                      | Run the Go program in the Delve debugger                      |




### **Compilation and Build Options**
| Command                                     | Description                                                   |
|---------------------------------------------|---------------------------------------------------------------|
| `go build`                                  | Compile the current project                                   |
| `go build -o example`                       | Build the current project and name the output binary          |
| `go build -v`                               | Enable verbose output during the build                        |
| `go build -x`                               | Show all the commands executed during the build               |
| `go build -race`                            | Enable race detection (useful for concurrent programs)        |
| `go build -ldflags "-s -w"`                 | Compile with optimizations for smaller binary size            |


### **Go Basic**
| Command                                     | Description                                                   |
|---------------------------------------------|---------------------------------------------------------------|
| `go run example.go`                         | Compile and run a Go program without creating a binary        |
| `go build example.go`                       | Compile a Go program into a binary                            |
| `go install example.go`                     | Compile and install the program into `$GOPATH/bin`            |
| `./example`                                 | Run the compiled binary program                               |
| `go fmt example.go`                         | Format the code according to Go standards                     |
| `go test`                                   | Run tests in the current Go project                           |

### **Go Clean Up**
| Command                                     | Description                                                   |
|---------------------------------------------|---------------------------------------------------------------|
| `go clean`                                  | Remove object files, binaries, and cached build information   |
| `go clean -cache`                           | Clear the build cache                                         |
| `go clean -modcache`                        | Clear the module download cache                               |
| `go clean -testcache`                       | Clear the test result cache                                   |


### **Go Module Management**
| Command                                     | Description                                                   |
|---------------------------------------------|---------------------------------------------------------------|
| `go mod init example`                       | Initialize a new Go module in the current directory           |
| `go mod tidy`                               | Clean up unused modules and add missing dependencies          |
| `go mod download`                           | Download all dependencies specified in `go.mod`               |
| `go mod vendor`                             | Copy dependencies to the `vendor` directory                   |
| `go get <module>`                           | Add or update a dependency                                    |
| `go list -m all`                            | List all modules in the current project                       |


### **Testing and Benchmarking**
| Command                                     | Description                                                   |
|---------------------------------------------|---------------------------------------------------------------|
| `go test`                                   | Run unit tests in the current package                         |
| `go test -v`                                | Run tests in verbose mode                                     |
| `go test -cover`                            | Run tests and display code coverage                           |
| `go test -bench .`                          | Run benchmark tests                                           |
| `go test -race`                             | Run tests with race condition detection                       |
| `go test -run <TestName>`                   | Run only the specified test function                          |
| `go test -coverprofile=coverage.out`        | Generate coverage report in a file                            |
| `go tool cover -html=coverage.out`          | View coverage report in HTML                                  |




### **Go Code Management**
| Command                                     | Description                                                   |
|---------------------------------------------|---------------------------------------------------------------|
| `go fmt ./...`                              | Format all Go files in the current module and submodules      |
| `go vet ./...`                              | Check for suspicious constructs or potential issues           |
| `go generate`                               | Execute `go:generate` directives in the code                  |
| `golangci-lint run`                         | Run a linting tool like `golangci-lint` on the project        |



### **Package Management**
| Command                                     | Description                                                   |
|---------------------------------------------|---------------------------------------------------------------|
| `go get github.com/pkg/errors`              | Download and install a package or module                      |
| `go list`                                   | List available packages and dependencies                      |
| `go mod graph`                              | Display the module dependency graph                           |



### **Go Documentation and Tools**
| Command                                     | Description                                                   |
|---------------------------------------------|---------------------------------------------------------------|
| `go doc fmt`                                | View documentation for a Go package                           |
| `go doc -all`                               | View all documentation in the current package                 |
| `go env`                                    | Print Go environment variables                                |
| `go tool pprof cpu.prof`                    | Run pprof to analyze CPU profiling data                       |
| `go tool trace trace.out`                   | Analyze and view a trace of program execution                 |




### **Miscellaneous**
| Command                                     | Description                                                   |
|---------------------------------------------|---------------------------------------------------------------|
| `go version`                                | Print the installed Go version                                |
| `go env GOPATH`                             | Display the current `GOPATH`                                  |
| `go env GOROOT`                             | Display the location of the Go installation                   |
| `go help`                                   | Display help information for Go commands                      |

