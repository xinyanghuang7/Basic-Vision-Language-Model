CUDA_VISIBLE_DEVICES=0,1,2 torchrun --nproc_per_node=3 train.py \
    --lora_rank 128 \
    --lora_dropout 0.10 \
    --per_device_train_batch_size 8 \
    --gradient_accumulation_steps 1 \
    --num_train_epochs 4 \
    --save_steps 1000 \
    --save_total_limit 5 \
    --learning_rate 3e-5 \
    --seed 42 \
    --ddp_find_unused_parameters False \
    --feature_proj_lr 1e-4 \
    --remove_unused_columns false \
    --logging_steps 100 \
    --output_dir ./weights/train_V1_5 \
    --target_modules "c_attn|w1|w2" \
    --image_map /home/u2023111315/VLM-learning/data/image_map_b.json \
    --captions_file /home/u2023111315/VLM-learning/data/captions_b.json
