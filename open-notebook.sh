#!/bin/bash

# This init script clones a Git repository that contains a Jupyter notebook
# named `tutorial.ipynb` and opens it in Jupyter Lab at startup
# Expected parameters : None
sudo apt update
sudo apt install ffmpeg libavcodec-extra

# Clone repository and give permissions to the onyxia user
GIT_REPO=python-for-quali
git clone --depth 1 https://github.com/luneauaymeric/${GIT_REPO}.git
chown -R onyxia:users ${GIT_REPO}/

# Install additional packages if a requirements.txt file is present in the project
REQUIREMENTS_FILE=${GIT_REPO}/requirements.txt
[ -f $REQUIREMENTS_FILE ] && pip install -r $REQUIREMENTS_FILE

# Open the relevant notebook when starting Jupyter Lab
# echo "c.LabApp.default_url = '/lab/tree/${GIT_REPO}/bertopic_tutorial_git.ipynb'" >> /home/onyxia/.jupyter/jupyter_server_config.py
