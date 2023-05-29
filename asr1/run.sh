#!/usr/bin/env bash
# Set bash to 'debug' mode, it will exit on :
# -e 'error', -u 'undefined variable', -o ... 'error in pipeline', -x 'print commands',
set -e
set -u
set -o pipefail

# download model
model_file=fleurs_model.pth
model_url=https://huggingface.co/espnet/wanchichen_fleurs_asr_conformer_hier_lid_utt/resolve/main/exp/asr_train_asr_raw_all_bpe6500_sp/valid.acc.ave_3best.pth
if [ ! -e downloads/$model_file ]; then
    wget "${model_url}" -O "downloads/${model_file}"
fi

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
    --pretrained_model "downloads/${model_file}" \
    --ignore_init_mismatch "true" \
    --ngpu 0 "$@"