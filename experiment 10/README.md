# Experiment 10: Process Creation and Termination Using C

### 🎯 Objective
To implement an explicit execution timeline management flow by compiling a program where a parent instantiates a child, syncs execution tracks using `wait()`, and logs target Process Identifiers (PIDs).

### 🛠️ Execution Pipeline Framework
1. **`fork()` System Call:** Duplicates process state spaces returning `0` inside child execution lanes and the absolute Child PID inside parent threads.
2. **`wait(NULL)` Synchronization:** Precludes zombie process generation by blocking parent progress until the registered child context exits kernel tables cleanly.
