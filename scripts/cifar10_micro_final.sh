#!/bin/bash

export PYTHONPATH="$(pwd)"

fixed_arc="1 1 0 1 1 1 1 0 0 1 0 4 1 1 1 0 1 1 5 0"
fixed_arc="$fixed_arc 1 1 1 4 2 1 1 1 0 4 1 1 0 1 4 4 5 2 0 1"

python src/cifar10/main.py \
  --data_format="NCHW" \
  --search_for="micro" \
  --reset_output_dir \
  --data_path="data/cifar10" \
  --output_dir="outv2-en2-4-0.5m-cutout-4" \
  --batch_size=512 \
  --num_epochs=630 \
  --child_cutout_size=16 \
  --log_every=100 \
  --eval_every_epochs=1 \
  --child_fixed_arc="${fixed_arc}" \
  --child_num_layers=4 \
  --child_num_pool=2 \
  --child_out_filters=21 \
  --child_num_enhance=1 \
  --child_num_branches=5 \
  --child_num_cells=5 \
  --child_keep_prob=0.80 \
  --child_drop_path_keep_prob=0.60 \
  --child_l2_reg=2e-4 \
  --child_lr_cosine \
  --child_lr_max=0.1 \
  --child_lr_min=0.0001 \
  --child_lr_T_0=10 \
  --child_lr_T_mul=2 \
  --nocontroller_training \
  --controller_search_whole_channels \
  --controller_entropy_weight=0.0001 \
  --controller_train_every=1 \
  --controller_sync_replicas \
  --controller_num_aggregate=10 \
  --controller_train_steps=50 \
  --controller_lr=0.001 \
  --controller_tanh_constant=1.50 \
  --controller_op_tanh_reduce=2.5 \
  "$@"

