#!/bin/bash
#SBATCH -p classc --gres=gpu:2  -A sxg125_csds438

module load cuda/10.0

eval "$(/home/<dac153>/miniconda3/bin/conda shell.bash hook)"

conda activate py3

conda list

time python simulationSerialSingle.py

time python simulationSerialDouble.py

time python simulationParallelSingle.py

time python simulationParallelDouble.py
