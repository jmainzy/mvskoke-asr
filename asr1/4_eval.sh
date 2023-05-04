#!/usr/bin/env bash
# Set bash to 'debug' mode, it will exit on :
# -e 'error', -u 'undefined variable', -o ... 'error in pipeline', -x 'print commands',
set -e
set -u
set -o pipefail

# Get error rates (stage 13)
./asr.sh \
    --stage 13 \
    --stop_stage 13 \
    --train_set train_nodev \
    --valid_set train_dev \
    --test_sets "train_dev test" \
    --asr_exp exp/asr_transfer_learning_with_pre_trained_model_from_HF