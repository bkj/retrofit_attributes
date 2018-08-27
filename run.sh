#!/bin/bash

# run.sh

# Create environment
conda create --name retro_env python=3.6 pip -y
source activate retro_env
pip install -r requirements.txt

# Backup results
mv results results.bak

mkdir -p results
python train_model.py \
    --input data/data.tsv \
    --prefix results/run_0