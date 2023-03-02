#!/bin/sh

echo 'Removing "nohup.out" file...'
rm nohup.out

echo 'Launching a Jupyter server...'
nohup jupyter-notebook --no-browser &

echo 'Launching a Tensorboard server...'
nohup tensorboard --logdir=runs/tensorboard/ &
echo 'Tensorboard PID: ' $! > nohup.out

echo 'Printing "nohup.out" content in 5 seconds...'
sleep 5
cat nohup.out
