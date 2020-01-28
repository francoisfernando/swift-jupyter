#!/bin/bash

cd ~
mkdir .jupyter

# copy the jupyter configuration into home-directory
cp -r /swift-jupyter/docker/jupyter_notebook_config.py ~/.jupyter/

cd /home
if [[ ! -d notebooks ]]
then
    mkdir notebooks
fi

python2 -m  jupyter lab "$@"