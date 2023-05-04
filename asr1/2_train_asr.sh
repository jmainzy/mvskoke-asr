#!/usr/bin/env bash
# Set bash to 'debug' mode, it will exit on :
# -e 'error', -u 'undefined variable', -o ... 'error in pipeline', -x 'print commands',
set -e
set -u
set -o pipefail

# do the training, which is stage 11
# using a pre-trained model
./asr.sh \
    --stage 11 \
    --stop_stage 11 \
    --train_set train_nodev \
    --valid_set train_dev \
    --test_sets "test" \
    --use_lm false \
    --asr_config "conf/train_asr.yaml" \
    --asr_tag "transfer_learning_with_pre_trained_model_from_HF" \
    --pretrained_model "downloads/41epoch.pth" \
    --ignore_init_mismatch "true" \
    --ngpu 0 "$@"