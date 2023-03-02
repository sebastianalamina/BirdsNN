#!/bin/sh

echo 'Removing "nohup.out" file...'
rm nohup.out

echo 'Launching a Jupyter server...'
nohup jupyter-notebook --no-browser &

echo 'Printing "nohup.out" content...'
sleep 1
cat nohup.out
