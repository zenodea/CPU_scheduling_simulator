#!/bin/bash
for i in {1..5}
do

  #Generating Experiment 3 - Parameters 1 Input files
	java -cp 215872.jar InputGenerator ../experiment3/Input_Parameters/input_parameters_1_"$i".prp ../experiment3/Input/input_1_"$i".in

  #Generating Experiment 3 - Parameters 2 Input files
	java -cp 215872.jar InputGenerator ../experiment3/Input_Parameters/input_parameters_2_"$i".prp ../experiment3/Input/input_2_"$i".in

  #Generating Experiment 3 - Parameters 3 Input files
	java -cp 215872.jar InputGenerator ../experiment3/Input_Parameters/input_parameters_3_"$i".prp ../experiment3/Input/input_3_"$i".in

done


for i in {1..5}
do
  #Generating Experiment 3 - Parameters 1 Output files
	java -cp 215872.jar Simulator ../experiment3/Simulator_Parameters/simulator_parameters_FCFS.prp ../experiment3/Output_FCFS/output_FCFS_1_"$i".out ../experiment3/Input/input_1_"$i".in
	java -cp 215872.jar Simulator ../experiment3/Simulator_Parameters/simulator_parameters_FeedBackRRS.prp ../experiment3/Output_FeedBackRRS/output_FeedBackRRS_1_"$i".out ../experiment3/Input/input_1_"$i".in
	java -cp 215872.jar Simulator ../experiment3/Simulator_Parameters/simulator_parameters_RRS.prp ../experiment3/Output_RRS/output_RRS_1_"$i".out ../experiment3/Input/input_1_"$i".in
	java -cp 215872.jar Simulator ../experiment3/Simulator_Parameters/simulator_parameters_SJF.prp ../experiment3/Output_SJF/output_SJF_1_"$i".out ../experiment3/Input/input_1_"$i".in
	java -cp 215872.jar Simulator ../experiment3/Simulator_Parameters/simulator_parameters_IdealSJF.prp ../experiment3/Output_IdealSJF/output_IdealSJF_1_"$i".out ../experiment3/Input/input_1_"$i".in

  #Generating Experiment 3 - Parameters 2 Output files
	java -cp 215872.jar Simulator ../experiment3/Simulator_Parameters/simulator_parameters_FCFS.prp ../experiment3/Output_FCFS/output_FCFS_2_"$i".out ../experiment3/Input/input_2_"$i".in
	java -cp 215872.jar Simulator ../experiment3/Simulator_Parameters/simulator_parameters_FeedBackRRS.prp ../experiment3/Output_FeedBackRRS/output_FeedBackRRS_2_"$i".out ../experiment3/Input/input_2_"$i".in
	java -cp 215872.jar Simulator ../experiment3/Simulator_Parameters/simulator_parameters_RRS.prp ../experiment3/Output_RRS/output_RRS_2_"$i".out ../experiment3/Input/input_2_"$i".in
	java -cp 215872.jar Simulator ../experiment3/Simulator_Parameters/simulator_parameters_SJF.prp ../experiment3/Output_SJF/output_SJF_2_"$i".out ../experiment3/Input/input_2_"$i".in
	java -cp 215872.jar Simulator ../experiment3/Simulator_Parameters/simulator_parameters_IdealSJF.prp ../experiment3/Output_IdealSJF/output_IdealSJF_2_"$i".out ../experiment3/Input/input_2_"$i".in

  #Generating Experiment 3 - Parameters 3 Output files
	java -cp 215872.jar Simulator ../experiment3/Simulator_Parameters/simulator_parameters_FCFS.prp ../experiment3/Output_FCFS/output_FCFS_3_"$i".out ../experiment3/Input/input_3_"$i".in
	java -cp 215872.jar Simulator ../experiment3/Simulator_Parameters/simulator_parameters_FeedBackRRS.prp ../experiment3/Output_FeedBackRRS/output_FeedBackRRS_3_"$i".out ../experiment3/Input/input_3_"$i".in
	java -cp 215872.jar Simulator ../experiment3/Simulator_Parameters/simulator_parameters_RRS.prp ../experiment3/Output_RRS/output_RRS_3_"$i".out ../experiment3/Input/input_3_"$i".in
	java -cp 215872.jar Simulator ../experiment3/Simulator_Parameters/simulator_parameters_SJF.prp ../experiment3/Output_SJF/output_SJF_3_"$i".out ../experiment3/Input/input_3_"$i".in
	java -cp 215872.jar Simulator ../experiment3/Simulator_Parameters/simulator_parameters_IdealSJF.prp ../experiment3/Output_IdealSJF/output_IdealSJF_3_"$i".out ../experiment3/Input/input_3_"$i".in
done