#!/usr/bin/env bash
# Set bash to 'debug' mode, it will exit on :
# -e 'error', -u 'undefined variable', -o ... 'error in pipeline', -x 'print commands',
set -e
set -u
set -o pipefail

# data prep
./asr.sh \
    --stage 1 \
    --stop_stage 5 \
    --lang en \
    --asr_config conf/train_asr_rnn.yaml \
    --train_set train_nodev \
    --valid_set train_dev \
    --test_sets "train_dev test test_seg" \
    --ngpu 0 

# collect stats
./asr.sh \
    --stage 10 \
    --stop_stage 10 \
    --train_set train_nodev \
    --valid_set train_dev \
    --test_sets "train_dev test test_seg" \
    --asr_config "conf/train_asr.yaml" "$@"
