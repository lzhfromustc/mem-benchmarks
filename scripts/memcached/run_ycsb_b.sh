#!/bin/bash

PROJECT_ROOT=$(git rev-parse --show-toplevel)

cd $PROJECT_ROOT/YCSB
./bin/ycsb run memcached -s -P workloads/workloadb  -p "memcached.hosts=127.0.0.1" 