#!/bin/bash
for i in {1..5}
do

  #Generating Experiment 2 - Parameters 1 Input files
	java -cp ../cpu-scheduler.jar InputGenerator ../experiments/experiment2/Input_Parameters/input_parameters_1_"$i".prp ../experiments/experiment2/Input/input_1_"$i".in

  #Generating Experiment 2 - Parameters 2 Input files
	java -cp ../cpu-scheduler.jar InputGenerator ../experiments/experiment2/Input_Parameters/input_parameters_2_"$i".prp ../experiments/experiment2/Input/input_2_"$i".in

  #Generating Experiment 2 - Parameters 3 Input files
	java -cp ../cpu-scheduler.jar InputGenerator ../experiments/experiment2/Input_Parameters/input_parameters_3_"$i".prp ../experiments/experiment2/Input/input_3_"$i".in

done

for i in {1..5}
do
  #Generating Experiment 2 - Parameters 1 Output files
	java -cp ../cpu-scheduler.jar Simulator ../experiments/experiment2/Simulator_Parameters/simulator_parameters_FCFS.prp ../experiments/experiment2/Output_FCFS/output_FCFS_1_"$i".out ../experiments/experiment2/Input/input_1_"$i".in
	java -cp ../cpu-scheduler.jar Simulator ../experiments/experiment2/Simulator_Parameters/simulator_parameters_FeedBackRRS.prp ../experiments/experiment2/Output_FeedBackRRS/output_FeedBackRRS_1_"$i".out ../experiments/experiment2/Input/input_1_"$i".in
	java -cp ../cpu-scheduler.jar Simulator ../experiments/experiment2/Simulator_Parameters/simulator_parameters_RRS.prp ../experiments/experiment2/Output_RRS/output_RRS_1_"$i".out ../experiments/experiment2/Input/input_1_"$i".in
	java -cp ../cpu-scheduler.jar Simulator ../experiments/experiment2/Simulator_Parameters/simulator_parameters_SJF.prp ../experiments/experiment2/Output_SJF/output_SJF_1_"$i".out ../experiments/experiment2/Input/input_1_"$i".in
	java -cp ../cpu-scheduler.jar Simulator ../experiments/experiment2/Simulator_Parameters/simulator_parameters_IdealSJF.prp ../experiments/experiment2/Output_IdealSJF/output_IdealSJF_1_"$i".out ../experiments/experiment2/Input/input_1_"$i".in

  #Generating Experiment 2 - Parameters 2 Output files
	java -cp ../cpu-scheduler.jar Simulator ../experiments/experiment2/Simulator_Parameters/simulator_parameters_FCFS.prp ../experiments/experiment2/Output_FCFS/output_FCFS_2_"$i".out ../experiments/experiment2/Input/input_2_"$i".in
	java -cp ../cpu-scheduler.jar Simulator ../experiments/experiment2/Simulator_Parameters/simulator_parameters_FeedBackRRS.prp ../experiments/experiment2/Output_FeedBackRRS/output_FeedBackRRS_2_"$i".out ../experiments/experiment2/Input/input_2_"$i".in
	java -cp ../cpu-scheduler.jar Simulator ../experiments/experiment2/Simulator_Parameters/simulator_parameters_RRS.prp ../experiments/experiment2/Output_RRS/output_RRS_2_"$i".out ../experiments/experiment2/Input/input_2_"$i".in
	java -cp ../cpu-scheduler.jar Simulator ../experiments/experiment2/Simulator_Parameters/simulator_parameters_SJF.prp ../experiments/experiment2/Output_SJF/output_SJF_2_"$i".out ../experiments/experiment2/Input/input_2_"$i".in
	java -cp ../cpu-scheduler.jar Simulator ../experiments/experiment2/Simulator_Parameters/simulator_parameters_IdealSJF.prp ../experiments/experiment2/Output_IdealSJF/output_IdealSJF_2_"$i".out ../experiments/experiment2/Input/input_2_"$i".in

  #Generating Experiment 2 - Parameters 3 Output files
	java -cp ../cpu-scheduler.jar Simulator ../experiments/experiment2/Simulator_Parameters/simulator_parameters_FCFS.prp ../experiments/experiment2/Output_FCFS/output_FCFS_3_"$i".out ../experiments/experiment2/Input/input_3_"$i".in
	java -cp ../cpu-scheduler.jar Simulator ../experiments/experiment2/Simulator_Parameters/simulator_parameters_FeedBackRRS.prp ../experiments/experiment2/Output_FeedBackRRS/output_FeedBackRRS_3_"$i".out ../experiments/experiment2/Input/input_3_"$i".in
	java -cp ../cpu-scheduler.jar Simulator ../experiments/experiment2/Simulator_Parameters/simulator_parameters_RRS.prp ../experiments/experiment2/Output_RRS/output_RRS_3_"$i".out ../experiments/experiment2/Input/input_3_"$i".in
	java -cp ../cpu-scheduler.jar Simulator ../experiments/experiment2/Simulator_Parameters/simulator_parameters_SJF.prp ../experiments/experiment2/Output_SJF/output_SJF_3_"$i".out ../experiments/experiment2/Input/input_3_"$i".in
	java -cp ../cpu-scheduler.jar Simulator ../experiments/experiment2/Simulator_Parameters/simulator_parameters_IdealSJF.prp ../experiments/experiment2/Output_IdealSJF/output_IdealSJF_3_"$i".out ../experiments/experiment2/Input/input_3_"$i".in
done