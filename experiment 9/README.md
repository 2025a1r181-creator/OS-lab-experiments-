# Experiment 9: CPU-Bound and I/O-Bound Processes

### 🎯 Objective
To write, execute, and analyze CPU-bound and I/O-bound programs, profiling metrics using `top` and mapping address regions using the `pmap` tracking utility.

### 📊 Performance Profiling Result Summary
- **CPU-Bound (`cpu_app`):** Stays in **Running (`R`)** status continually using close to **100% CPU Share**.
- **I/O-Bound (`io_app`):** Spends most ticks in **Sleeping (`S`)** status awaiting storage block hardware availability, drawing minimal CPU share.
- **`pmap` Mapping Analysis:** Details execution segments including text space structures (`r-x`), data segments (`rw-`), and linked system library environments (`libc.so`).
