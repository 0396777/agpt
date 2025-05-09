#!/bin/bash

deepspeed --include localhost:0,1 --master_port 28412 train_visa.py \
    --model openllama_peft \
    --stage 1\
    --imagebind_ckpt_path /kaggle/input/imagebind-huge-pth/imagebind_huge.pth\
    --vicuna_ckpt_path /kaggle/input/7b-v0\
    --delta_ckpt_path /kaggle/input/pandagpt-m/pytorch_model.pt\
    --max_tgt_len 1024\
    --data_path  /kaggle/input/pandagpt4-visual-instruction-data/pandagpt4_visual_instruction_data.json\
    --image_root_path /kaggle/input/images/images/\
    --save_path  ./ckpt/train_visa/\
    --log_path ./ckpt/train_visa/log_rest/
