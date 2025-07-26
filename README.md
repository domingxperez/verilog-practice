# Verilog Practice – Digital Design Learning

Este repositorio contiene mis ejercicios, prácticas y mini proyectos mientras aprendo Verilog desde cero, un lenguaje de descripción de hardware (HDL). 

## 🔧 Herramientas utilizadas

- [EDA Playground](https://www.edaplayground.com/) – simulador online
- Estilo de codificación basado en módulos `.v` y testbenches `_tb.v`
- (Opcional más adelante) Icarus Verilog + GTKWave para simulación local

## 📁 Estructura del repositorio
verilog-practice/

├── 01_basics/ # Compuertas lógicas y operaciones simples

├── 02_modules/ # Módulos combinacionales

├── 03_sequential/ # Flip-flops, contadores, registros

├── 04_projects/ # Mini proyectos con múltiples módulos

└── README.md


## 🧪 Cómo simular

### 🧠 Opción 1: Simulación online

Puedes probar todos los ejercicios directamente en [EDA Playground](https://www.edaplayground.com/):

- No requiere instalación.
- Visualización automática de señales con EPWave.
- Ideal para practicar módulos pequeños.

👉 Abre el archivo `.v` y el `testbench`, pégalos en EDA Playground y selecciona el compilador `Icarus Verilog`.

---

### 💻 Opción 2: Simulación local con Icarus Verilog

Si prefieres trabajar desde tu PC o en GitHub Codespaces:

#### 🧰 Requisitos:
- [Icarus Verilog](https://bleyer.org/icarus/)
- (Opcional) [GTKWave](https://gtkwave.sourceforge.net/) para ver señales
- Terminal (`bash`, `cmd`, o GitHub Codespace)

#### ▶️ Pasos para compilar y ejecutar:

```bash
cd ruta_con_ficheros.v

# Compilar
iverilog -o simv modulo.v testbench.v

# Ejecutar
vvp simv
```

## ✅ Ejercicios completados

### 01 – Básicos
- [✅] AND Gate
- [✅] OR Gate
- [✅] NOT Gate
- [ ] NAND Gate
- [ ] XOR Gate

### 02 – Módulos combinacionales
- [ ] Multiplexor 2:1
- [ ] Multiplexor 4:1
- [ ] Comparador de 4 bits
- [ ] Decodificador 2→4

### 03 – Módulos secuenciales
- [ ] Flip-flop tipo D
- [ ] Contador binario 4 bits
- [ ] Registro de desplazamiento
- [ ] Máquina de estados simple

### 04 – Mini proyectos
- [ ] Semáforo inteligente (FSM)
- [ ] Cronómetro en binario
- [ ] ALU simple
- [ ] Mini CPU de 4 instrucciones
- [ ] Juego estilo “Simon” con FSM



