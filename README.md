# CPU Scheduling Simulator

A comprehensive Java-based CPU scheduling simulator that analyzes and compares the performance of different CPU scheduling algorithms through controlled experiments.

## Overview

This simulator implements five different CPU scheduling algorithms and provides detailed performance analysis through multiple experiments with varying parameters. It generates synthetic process workloads and measures key performance metrics to evaluate algorithm efficiency.

## Implemented Algorithms

- **FCFS (First Come First Served)** - Non-preemptive scheduling based on arrival time
- **Round Robin (RR)** - Preemptive time-slice based scheduling
- **SJF (Shortest Job First)** - Uses exponential averaging to predict CPU burst times
- **Ideal SJF** - Perfect knowledge variant with actual burst times
- **Multi-level Feedback Queue with Round Robin** - Advanced priority-based scheduling

## Project Structure

```
CPU-Scheduling-Simulator/
├── README.md
├── pom.xml                    # Maven build configuration  
├── cpu-scheduler.jar          # Compiled simulator
├── scheduler.jar              # Alternative executable
├── src/                       # Java source code
│   └── main/java/            # Main application classes
├── scripts/                   # Experiment execution scripts
│   ├── run_Experiment1.sh
│   ├── run_Experiment2.sh
│   └── run_Experiment3.sh
└── experiments/              # Experiment data and results
    ├── experiment1/          # Low system load scenarios
    ├── experiment2/          # Medium system load scenarios  
    └── experiment3/          # High system load scenarios
```

## Key Components

### Core Classes
- `Simulator.java` - Main simulation engine
- `AbstractScheduler.java` - Base scheduler interface
- `Process.java` - Process representation with CPU/IO bursts
- `EventProcessor.java` - Discrete event simulation handler
- `InputGenerator.java` - Synthetic workload generator
- `ExponentialGenerator.java` - Statistical distribution generator

### Scheduler Implementations
- `FcfsScheduler.java` - First Come First Served
- `RRScheduler.java` - Round Robin
- `SJFScheduler.java` - Shortest Job First with prediction
- `IdealSJFScheduler.java` - Perfect SJF knowledge
- `FeedbackRRScheduler.java` - Multi-level feedback queue

## Performance Metrics

The simulator measures and analyzes:

- **CPU Time** - Total processor utilization
- **Response Time** - Time from submission to first execution
- **Turnaround Time** - Complete job execution duration  
- **Waiting Time** - Time spent in ready queue
- **Termination Time** - Total time in system

## Running Experiments

### Prerequisites
- Java 8 or higher
- Maven (for building from source)

### Quick Start

1. **Run Individual Experiments:**
   ```bash
   cd scripts
   ./run_Experiment1.sh  # Low load scenarios
   ./run_Experiment2.sh  # Medium load scenarios  
   ./run_Experiment3.sh  # High load scenarios
   ```

2. **Run Single Algorithm:**
   ```bash
   java -cp cpu-scheduler.jar Simulator \
     experiments/experiment1/Simulator_Parameters/simulator_parameters_FCFS.prp \
     output.out \
     experiments/experiment1/Input/input_1_1.in
   ```

3. **Generate Custom Workload:**
   ```bash
   java -cp cpu-scheduler.jar InputGenerator parameters.prp input.in
   ```

### Experiment Design

Each experiment runs **5 iterations** across **3 parameter sets**, testing all **5 algorithms** for statistical significance:

- **Experiment 1**: Light workload (low process arrival rate)
- **Experiment 2**: Moderate workload (balanced system utilization)  
- **Experiment 3**: Heavy workload (high system stress testing)

## Results Analysis

Results are automatically organized in each experiment directory:

- `Averaged_Files/` - Algorithm performance summaries
- `Final Outputs/` - Consolidated metrics by type
- `Input/` - Generated process workloads
- `Output_*/` - Raw simulation results per algorithm

### Performance Comparisons

The simulator enables direct comparison of:
- **Throughput** across different system loads
- **Fairness** in process scheduling
- **Responsiveness** for interactive workloads  
- **Efficiency** of CPU utilization

## Building from Source

```bash
# Compile with Maven
mvn clean compile

# Package JAR
mvn package

# Run tests (if available)
mvn test
```

## Configuration Files

### Input Parameters (`.prp` files)
Define process generation characteristics:
- Arrival rate distributions
- CPU burst patterns  
- I/O requirements
- Process priorities

### Simulator Parameters
Configure algorithm-specific settings:
- Time quantum for Round Robin
- Alpha value for SJF prediction
- Queue priorities for feedback scheduling

## Technical Details

- **Language**: Java 8+
- **Architecture**: Discrete event simulation
- **Concurrency**: Single-threaded deterministic execution
- **Data Format**: CSV output for analysis tools
- **Randomization**: Seeded generators for reproducible results

