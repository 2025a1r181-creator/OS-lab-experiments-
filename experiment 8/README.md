# Experiment 8: Inter-Process Communication (IPC) using Pipes

### 🎯 Objective
To study and implement Inter-Process Communication (IPC) using unidirectional system pipes between a Parent and a Child process in Ubuntu Linux.

### 📝 Logic & Architecture
* **Pipe Utility:** A pipe is a unidirectional communication channel created in system memory using the `pipe()` system call.
* **Descriptors:** It provides two file descriptors: `pipefd[0]` for reading data and `pipefd[1]` for writing data.
* **Process Flow:**
  1. Parent creates a pipe first, then forks a Child process.
  2. The Child closes its read descriptor and writes a string message into the pipe.
  3. The Parent closes its write descriptor and blocks until it successfully reads the message out from the pipe.

### 🚀 How to Run and Compile
1. Open the terminal inside this folder and compile the C code:
   ```bash
   gcc ipc_pipe.c -o ipc_pipe
   ```
2. Execute the compiled application binary:
   ```bash
   ./ipc_pipe
   ```
