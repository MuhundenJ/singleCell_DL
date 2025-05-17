#!/bin/bash
conda activate /work/project/becbec_005/DeepLearning/Calderon_2022/DeepLearning_TF
unset XDG_RUNTIME_DIR
echo "done."
echo "*** Setting Jupyter interrupt character to Ctrl-Y instead of Ctrl-C"
echo "*** to avoid conflicts with Slurm."
stty intr ^Y
echo ""
echo "*** Starting Jupyter on: " $(hostname)
jupyter notebook --no-browser --ip='0.0.0.0' # earlier versions of Jupyter 	allowed '*' instead of '0.0.0.0'
