#!/bin/bash

python3 train_ssd.py \
    --dataset_type open_images \
    --datasets data/fruit \
    --validation_dataset data/fruit/validation \
    --net mb1-ssd \
    --batch_size 24 \
    --num_epochs 200 \
    --scheduler cosine \
    --checkpoint_folder models/fruit \
    --num_workers 8 \
    --lr 0.01 \
    --t_max 200
