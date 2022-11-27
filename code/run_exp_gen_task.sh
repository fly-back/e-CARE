python3 gpt2_generate.py \
	--data_dir '../data/Explanation_Generation/' \
	--model_dir 'gpt2' \
	--save_dir './output/saved_model' \
	--log_dir './output/log' \
	--train 'train.jsonl' \
	--dev 'dev.jsonl' \
	--test 'dev.jsonl' \
	--model_name 'gpt2' \
	--cuda True \
	--gpu '0' \
	--batch_size 32 \
	--epochs 2 \
	--lr 2e-5 \
    --set_seed True \
	--seed 1024 \
	--patient 5 \
	--length 50 \
    --atcon False \

python3 gpt2_generate.py \
	--data_dir '../data/Explanation_Generation/' \
	--model_dir 'gpt2' \
	--save_dir './output/saved_model' \
	--log_dir './output/log' \
	--train 'train.jsonl' \
	--dev 'dev.jsonl' \
	--test 'dev.jsonl' \
	--model_name 'gpt2' \
	--cuda True \
	--gpu '0' \
	--batch_size 32 \
	--epochs 2 \
	--lr 2e-5 \
    --set_seed True \
	--seed 1024 \
	--patient 5 \
	--length 50 \
    --atcon True \