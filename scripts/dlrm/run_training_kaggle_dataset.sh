#!/bin/bash

PROJECT_ROOT=$(git rev-parse --show-toplevel)

cd $PROJECT_ROOT/dlrm

./bench/dlrm_s_criteo_kaggle.sh