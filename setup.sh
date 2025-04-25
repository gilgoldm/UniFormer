#!/bin/bash

set -eo pipefail

export PATH=/labhome/shaulf/.local/bin:$PATH
export TMPDIR=$PWD/.cache/tmp
export PIP_CACHE_DIR=$PWD/.cache/pip
mkdir -p $TMPDIR
# python -m venv .venv
. .venv/bin/activate
# pip install -r requirements.txt
rsync_cmd="rsync -avzP -e ssh"
dgx1_k400=root@swx-mtvr-arm01:/rsu/data/kinetics-dataset/k400
uniformer_k400=./rsu/data/k400
if [ ! -d "$uniformer_k400/val" ]; then
    $rsync_cmd $dgx1_k400/val $uniformer_k400 
fi
if [ ! -d "./pretrained_models" ]; then
    $rsync_cmd $dgx1_k400/other_projects/Uniformer/pretrained_models .
fi
