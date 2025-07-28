# Verilog Practice – Digital Design Learning

This repository contains my exercises, practices, and mini projects while learning Verilog from scratch, a hardware description language (HDL).

## 🔧 Tools Used

- [EDA Playground](https://www.edaplayground.com/) – online simulator  
- Coding style based on `.v` modules and `_tb.v` testbenches  
- Icarus Verilog + GTKWave for local simulation

## 📁 Repository Structure  
verilog-practice/

├── 01_basics/   # Logic gates and simple operations  
├── 02_modules/  # Combinational modules  
├── 03_sequential/ # Flip-flops, counters, registers  
├── 04_projects/ # Mini projects with multiple modules  
└── README.md

## 🧪 How to Simulate

### 🧠 Option 1: Online Simulation

You can test all exercises directly on [EDA Playground](https://www.edaplayground.com/):

- No installation required.  
- Automatic waveform visualization with EPWave.  
- Ideal for practicing small modules.

👉 Open the `.v` file and the testbench, paste them into EDA Playground, and select the `Icarus Verilog` compiler.

---

### 💻 Option 2: Local Simulation with Icarus Verilog

If you prefer working from your PC or GitHub Codespaces:

#### 🧰 Requirements:
- [Icarus Verilog](https://bleyer.org/icarus/)  
- (Optional) [GTKWave](https://gtkwave.sourceforge.net/) for viewing waveforms  
- Terminal (`bash`, `cmd`, or GitHub Codespace)

#### ▶️ Steps to compile and run:

```bash
cd path_to_files

# Compile
iverilog -o simv module.v testbench.v

# Run
vvp simv
```
## ✅ Completed Exercises

### 01 – Basics
- [✅] AND Gate
- [✅] OR Gate
- [✅] NOT Gate
- [✅] NAND Gate
- [✅] XOR Gate

### 02 – Combinational Modules
- [✅] 2:1 Multiplexer
- [✅] 4:1 Multiplexer
- [✅] 4-bit Comparator
- [✅] 2-to-4 Decoder

### 03 – Sequential Modules
- [ ] D Flip-flop
- [ ] 4-bit Binary Counter
- [ ] Shift Register
- [ ] Simple State Machine

### 04 – Mini Projects
- [ ] Smart Traffic Light (FSM)
- [ ] Binary Stopwatch
- [ ] Simple ALU
- [ ] Mini 4-instruction CPU
- [ ] “Simon” style Game with FSM

