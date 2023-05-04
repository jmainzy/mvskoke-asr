#!/usr/bin/env bash
# Set bash to 'debug' mode, it will exit on :
# -e 'error', -u 'undefined variable', -o ... 'error in pipeline', -x 'print commands',
set -e
set -u
set -o pipefail

# First, decode (stage 12). 
./asr.sh \
    --stage 12 \
    --stop_stage 12 \
    --inference_nj 1 \
    --train_set train_nodev \
    --valid_set train_dev \
    --test_sets "train_dev test" \
    --use_lm false \
    --asr_exp exp/asr_transfer_learning_with_pre_trained_model_from_HF 