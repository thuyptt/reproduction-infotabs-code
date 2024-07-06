# create results folder and save the results for every model in a file
mkdir -p results/bertB # alterrnative: robertaL, bertB 
result_file="results/bertB/all_test_results_for_strucpremise_alpha1.txt"
# Delete old result file if it exist
rm -f "$result_file"

# Array of model names (e.g. in this case for parametrise)
model_names=("model_1_0.625"  "model_2_0.6472222222222223" "model_3_0.6555555555555556" "model_4_0.6677777777777778" "model_5_0.6705555555555556" "model_6_0.6655555555555556" "model_7_0.6672222222222223" "model_8_0.6683333333333333" "model_9_0.6744444444444444" "model_10_0.6722222222222223")  

# loop over model names
for model_name in "${model_names[@]}"; do
  echo "$model_name"
  echo "$model_name" &>> "$result_file"
  python classifier.py \
    --mode "test" \
    --epochs 10 \
    --batch_size 8 \
    --in_dir "./../../temp/processed_bert/strucpremise/" \
    --model_type "bert-base-cased" \
    --model_dir "./../../temp/models/bertB/strucpremise/" \
    --model_name "$model_name" \
    --save_dir "./../../temp/models/bertB/" \
    --save_folder "strucpremise/" \
    --nooflabels 3 \
    --save_enable 1 \
    --seed 17 \
    --eval_splits dev test_alpha1 \
    --inoculate 0 \
    --parallel 0 \
	&>> "$result_file" # save results in file
done

# create results folder and save the results for every model in a file
mkdir -p results/bertB # alterrnative: robertaL, bertB 
result_file="results/bertB/all_test_results_for_strucpremise_alpha2.txt"
# Delete old result file if it exist
rm -f "$result_file"

# Array of model names (e.g. in this case for parametrise)


# loop over model names
for model_name in "${model_names[@]}"; do
  echo "$model_name"
  echo "$model_name" &>> "$result_file"
  python classifier.py \
    --mode "test" \
    --epochs 10 \
    --batch_size 8 \
    --in_dir "./../../temp/processed_bert/strucpremise/" \
    --model_type "bert-base-cased" \
    --model_dir "./../../temp/models/bertB/strucpremise/" \
    --model_name "$model_name" \
    --save_dir "./../../temp/models/bertB/" \
    --save_folder "strucpremise/" \
    --nooflabels 3 \
    --save_enable 1 \
    --seed 17 \
    --eval_splits dev test_alpha2 \
    --inoculate 0 \
    --parallel 0 \
	&>> "$result_file" # save results in file
done

# create results folder and save the results for every model in a file
mkdir -p results/bertB # alterrnative: robertaL, bertB 
result_file="results/bertB/all_test_results_for_strucpremise_alpha3.txt"
# Delete old result file if it exist
rm -f "$result_file"

# Array of model names (e.g. in this case for parametrise)


# loop over model names
for model_name in "${model_names[@]}"; do
  echo "$model_name"
  echo "$model_name" &>> "$result_file"
  python classifier.py \
    --mode "test" \
    --epochs 10 \
    --batch_size 8 \
    --in_dir "./../../temp/processed_bert/strucpremise/" \
    --model_type "bert-base-cased" \
    --model_dir "./../../temp/models/bertB/strucpremise/" \
    --model_name "$model_name" \
    --save_dir "./../../temp/models/bertB/" \
    --save_folder "strucpremise/" \
    --nooflabels 3 \
    --save_enable 1 \
    --seed 17 \
    --eval_splits dev test_alpha3 \
    --inoculate 0 \
    --parallel 0 \
	&>> "$result_file" # save results in file
done