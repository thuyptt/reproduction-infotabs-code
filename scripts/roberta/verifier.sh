# create results folder and save the results for every model in a file
mkdir -p results/robertaB # alterrnative: robertaL, bertB 
result_file="results/robertaB/all_test_results_for_parapremiserand_alpha3.txt"
# Delete old result file if it exist
rm -f "$result_file"

# Array of model names (e.g. in this case for parametrise)
model_names=("model_1_0.5777777777777777" "model_2_0.6088888888888889" "model_3_0.6116666666666667" "model_4_0.6222222222222222" "model_5_0.6272222222222222" 
"model_6_0.635" "model_7_0.6344444444444445" "model_8_0.63" "model_9_0.64" "model_10_0.6355555555555555")

# loop over model names
for model_name in "${model_names[@]}"; do
  echo "$model_name"
  echo "$model_name" &>> "$result_file"
  python classifier.py \
    --mode "test" \
    --epochs 10 \
    --batch_size 8 \
    --in_dir "./../../temp/processed/parapremiserand/" \
    --model_type "roberta-base" \
    --model_dir "./../../temp/models/parapremiserand/" \
    --model_name "$model_name" \
    --save_dir "./../../temp/models/" \
    --save_folder "parapremiserand/" \
    --nooflabels 3 \
    --save_enable 0 \
    --seed 17 \
    --eval_splits dev test_alpha3 \
    --inoculate 0 \
    --parallel 0 \
	&>> "$result_file" # save results in file
done