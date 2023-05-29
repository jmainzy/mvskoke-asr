#!/usr/bin/env bash
# Set bash to 'debug' mode, it will exit on :
# -e 'error', -u 'undefined variable', -o ... 'error in pipeline', -x 'print commands',
set -e
set -u
set -o pipefail

# data prep
./asr.sh \
    --stage 1 \
    --stop_stage 13 \
    --lang mus \
    --train_set "train_nodev" \
    --valid_set "train_dev" \
    --test_sets "test" \
    --token_type char \
    --asr_config "conf/train_asr.yaml" \
    --use_lm false \
    --asr_tag "transfer_learning" \
    --download_model espnet/wanchichen_fleurs_asr_conformer_hier_lid_utt \
    --ignore_init_mismatch "true" \
    --ngpu 0 "$@"