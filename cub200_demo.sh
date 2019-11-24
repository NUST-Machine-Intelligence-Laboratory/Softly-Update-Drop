#!/usr/bin/env bash

export CUDA_VISIBLE_DEVICES=1,2

python demo.py --data data/bird --model model/bird-77.22.pth
