# create results folder and save the results for every model in a file
mkdir -p results/robertaB # alterrnative: robertaL, bertB 
result_file="results/robertaB/all_test_results_for_only_hypo_alpha1.txt"
# Delete old result file if it exist
rm -f "$result_file"

# Array of model names (e.g. in this case for parametrise)
model_names=("model_1_0.5977777777777777" "model_2_0.6138888888888889" "model_3_0.62" "model_4_0.6211111111111111" "model_5_0.6172222222222222" "model_6_0.63" "model_7_0.6233333333333333" "model_8_0.6233333333333333" "model_9_0.6327777777777778" "model_10_0.6194444444444445" ) 

# loop over model names
for model_name in "${model_names[@]}"; do
  echo "$model_name"
  echo "$model_name" &>> "$result_file"
  python classifier.py \
    --mode "test" \
    --epochs 10 \
    --batch_size 8 \
    --in_dir "./../../temp/processed/only_hypo/" \
    --model_type "roberta-base" \
    --model_dir "./../../temp/models/robertaB/only_hypo/" \
    --model_name "$model_name" \
    --save_dir "./../../temp/models/robertaB/" \
    --save_folder "only_hypo/" \
    --nooflabels 3 \
    --save_enable 1 \
    --seed 17 \
    --eval_splits dev test_alpha1 \
    --inoculate 0 \
    --parallel 0 \
	&>> "$result_file" # save results in file
done

# create results folder and save the results for every model in a file
mkdir -p results/robertaB # alterrnative: robertaL, bertB 
result_file="results/robertaB/all_test_results_for_only_hypo_alpha2.txt"
# Delete old result file if it exist
rm -f "$result_file"

# Array of model names (e.g. in this case for parametrise)
model_names=("model_1_0.5977777777777777" "model_2_0.6138888888888889" "model_3_0.62" "model_4_0.6211111111111111" "model_5_0.6172222222222222" "model_6_0.63" "model_7_0.6233333333333333" "model_8_0.6233333333333333" "model_9_0.6327777777777778" "model_10_0.6194444444444445" ) 

# loop over model names
for model_name in "${model_names[@]}"; do
  echo "$model_name"
  echo "$model_name" &>> "$result_file"
  python classifier.py \
    --mode "test" \
    --epochs 10 \
    --batch_size 8 \
    --in_dir "./../../temp/processed/only_hypo/" \
    --model_type "roberta-base" \
    --model_dir "./../../temp/models/robertaB/only_hypo/" \
    --model_name "$model_name" \
    --save_dir "./../../temp/models/robertaB/" \
    --save_folder "only_hypo/" \
    --nooflabels 3 \
    --save_enable 1 \
    --seed 17 \
    --eval_splits dev test_alpha2 \
    --inoculate 0 \
    --parallel 0 \
	&>> "$result_file" # save results in file
done

# create results folder and save the results for every model in a file
mkdir -p results/robertaB # alterrnative: robertaL, bertB 
result_file="results/robertaB/all_test_results_for_only_hypo_alpha3.txt"
# Delete old result file if it exist
rm -f "$result_file"

# Array of model names (e.g. in this case for parametrise)
model_names=("model_1_0.5977777777777777" "model_2_0.6138888888888889" "model_3_0.62" "model_4_0.6211111111111111" "model_5_0.6172222222222222" "model_6_0.63" "model_7_0.6233333333333333" "model_8_0.6233333333333333" "model_9_0.6327777777777778" "model_10_0.6194444444444445" ) 

# loop over model names
for model_name in "${model_names[@]}"; do
  echo "$model_name"
  echo "$model_name" &>> "$result_file"
  python classifier.py \
    --mode "test" \
    --epochs 10 \
    --batch_size 8 \
    --in_dir "./../../temp/processed/only_hypo/" \
    --model_type "roberta-base" \
    --model_dir "./../../temp/models/robertaB/only_hypo/" \
    --model_name "$model_name" \
    --save_dir "./../../temp/models/robertaB/" \
    --save_folder "only_hypo/" \
    --nooflabels 3 \
    --save_enable 1 \
    --seed 17 \
    --eval_splits dev test_alpha3 \
    --inoculate 0 \
    --parallel 0 \
	&>> "$result_file" # save results in file
done