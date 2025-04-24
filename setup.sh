#!/bin/bash

export PATH=/labhome/shaulf/.local/bin:$PATH
export TMPDIR=$PWD/.cache/tmp
export PIP_CACHE_DIR=$PWD/.cache/pip
mkdir -p $TMPDIR
python -m venv .venv
. .venv/bin/activate
pip install -r requirements.txt
mkdir -p video_classification/work_dir/
