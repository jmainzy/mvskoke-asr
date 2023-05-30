#!/bin/bash
# Set bash to 'debug' mode, it will exit on :
# -e 'error', -u 'undefined variable', -o ... 'error in pipeline', -x 'print commands',
set -e
set -u
set -o pipefail

train_set="train_nodev"
train_dev="train_dev"
test_set="test"

asr_config=conf/train_asr.yaml
inference_config=conf/decode_asr.yaml

# download model
model_file=fleurs_model.pth
model_url=https://huggingface.co/espnet/wanchichen_fleurs_asr_conformer_hier_lid_utt/resolve/main/exp/asr_train_asr_raw_all_bpe6500_sp/valid.acc.ave_3best.pth

if [ ! -e downloads/$model_file ]; then
    wget "${model_url}" -O "downloads/${model_file}"
fi

    # --pretrained_model downloads/$model_file \
./asr.sh \
    --local_data_opts "--stage 1" \
    --stage 1 \
    --stop_stage 13 \
    --ngpu 0 \
    --nj 40 \
    --inference_nj 40 \
    --use_lm false \
    --token_type bpe \
    --nbpe 500 \
    --feats_type raw \
    --asr_config "${asr_config}" \
    --inference_config "${inference_config}" \
    --ignore_init_mismatch "true" \
    --download_model espnet/ftshijt_espnet2_asr_puebla_nahuatl_transfer \
    --train_set "${train_set}" \
    --valid_set "${train_dev}" \
    --test_sets "${test_set}" \
    --inference_asr_model valid.acc.best.pth "$@"
