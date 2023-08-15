#!/bin/sh

echo 'Removing "nohup.out" file...'
rm nohup.out

echo 'Executing "Birds NN.ipynb" notebook...'
nohup jupyter nbconvert --ExecutePreprocessor.timeout=-1 --to notebook --execute Birds\ NN.ipynb --output runs/notebooks/$(date +"%Y-%m-%d-%H-%M") &
