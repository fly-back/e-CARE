python3 train_discriminate.py \
  --data_dir "../data/Causal_Reasoning/" \
  --model_dir "adamnik/bert-causality-baseline" \
  --save_dir "./output/saved_model" \
  --log_dir "./output/log" \
  --train "train.jsonl" \
  --dev "dev.jsonl" \
  --test "dev.jsonl" \
  --model_name "causalbert" \
  --gpu "0" \
  --batch_size 64 \
  --cuda True\
  --epochs 5 \
  --lr 1e-5 \
  --set_seed True \
  --patient 3 \
  --loss_func "BCE" \
  --wandb True \

  python3 train_discriminate.py \
  --data_dir "../data/Causal_Reasoning/" \
  --model_dir "adamnik/bert-causality-baseline" \
  --save_dir "./output/saved_model" \
  --log_dir "./output/log" \
  --train "train.jsonl" \
  --dev "dev.jsonl" \
  --test "dev.jsonl" \
  --model_name "causalbert" \
  --gpu "0" \
  --batch_size 64 \
  --cuda True\
  --epochs 5 \
  --lr 5e-6 \
  --set_seed True \
  --patient 3 \
  --loss_func "BCE" \
  --wandb True \
