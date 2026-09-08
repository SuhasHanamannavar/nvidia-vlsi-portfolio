# NVIDIA VLSI & Hardware Portfolio (`nvidia-vlsi-portfolio`)

## 🎯 Mission Statement
To build end-to-end expertise in digital logic, synthesizable RTL design (Verilog/SystemVerilog), ASIC flow, computer architecture, and GPU hardware paradigms, culminating in an interview-ready portfolio for hardware/ASIC engineering roles at NVIDIA.

---

## 🌟 Why NVIDIA? (My 3-Sentence Story)
1. NVIDIA stands at the frontier of accelerated computing, where architecture, silicon design, and software co-design solve the world's most demanding computational problems.
2. I am driven by the challenge of designing high-efficiency digital systems—from pipelined datapaths to high-throughput parallel compute blocks—that directly shape the future of AI and graphics hardware.
3. Joining NVIDIA means contributing to industry-defining architectures where every gate, pipeline stage, and timing slack optimization empowers global-scale computing.

---

## 📁 Repository Structure
- `docs/` — Architecture specifications, timing analysis reports, derivation notes, and checklists.
- `rtl/` — Synthesizable Verilog and SystemVerilog hardware modules (combinational, sequential, FSMs, controllers).
- `tb/` — Verification testbenches (directed, self-checking, and constrained-random testbenches).
- `projects/` — Flagship projects (FIFO with CDC, UART, Cache Controller, 5-Stage Pipelined RISC-V Core, GPU SIMD unit).
- `resources/` — Curated references, textbooks, cheat sheets, and problem sets.
- `notes/` — Concept breakdowns, daily logs, and technical interview question bank.

---

## 🛠️ Toolchain Status
- **Simulation**: Icarus Verilog (`iverilog`) & `vvp` ✅ Verified
- **Waveform Viewer**: GTKWave ✅ Verified
- **Cycle-Accurate Simulator**: Verilator ✅ Verified
- **Scripting & Automation**: Python 3.12+ ✅ Verified
- **Version Control**: Git & GitHub ✅ Configured
- **Editor**: VS Code with Verilog-HDL / SystemVerilog extensions ✅ Configured

---

## 🚀 Quick Start / Verification
To compile and simulate the sample module:
```bash
iverilog -o tb/hello_world.vvp rtl/hello_world.v tb/hello_world_tb.v
vvp tb/hello_world.vvp
gtkwave hello_world.vcd
```
