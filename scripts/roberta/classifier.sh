python3 classifier.py \
	--mode "train" \
	--epochs 10 \
	--batch_size 8 \
	--in_dir "./../../temp/processed/parapremise/" \
	--model_type "roberta-large" \
	--model_dir "./../../temp/models/robertaL/parapremise/" \
	--model_name "" \
	--save_dir "./../../temp/models/robertaL/" \
	--save_folder "parapremise/" \
	--nooflabels 3 \
	--save_enable 0 \
	--seed 17 \
	--eval_splits dev test_alpha1 \
	--inoculate 0 \
	--parallel 0
 