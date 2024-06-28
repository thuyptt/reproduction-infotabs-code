# usr/bin/bash
mkdir -p ./../../temp/processed
# para as premise
python3 preprocess_roberta.py --max_len 512 --data_dir ./../../temp/data/ --in_dir parapremise --out_dir ../processed/parapremise --single_sentence 0 --tokenizer_type roberta-base
# struct as a premsie
python3 preprocess_roberta.py --max_len 512 --data_dir ./../../temp/data/ --in_dir strucpremise --out_dir ../processed/strucpremise --single_sentence 0 --tokenizer_type roberta-base
# wmd top 1 as a premise
python3 preprocess_roberta.py --max_len 512 --data_dir ./../../temp/data/ --in_dir wmdpremise1 --out_dir ../processed/wmdpremise1 --single_sentence 0 --tokenizer_type roberta-base
# wmd top 3 as a premise
python3 preprocess_roberta.py --max_len 512 --data_dir ./../../temp/data/ --in_dir wmdpremise3 --out_dir ../processed/wmdpremise3 --single_sentence 0 --tokenizer_type roberta-base
# dummy as a premise
python3 preprocess_roberta.py --max_len 512 --data_dir ./../../temp/data/ --in_dir dummypremise --out_dir ../processed/dummypremise --single_sentence 0 --tokenizer_type roberta-base
#random table structure as a premise
python3 preprocess_roberta.py --max_len 512 --data_dir ./../../temp/data/ --in_dir strucpremiserand --out_dir ../processed/strucpremiserand --single_sentence 0 --tokenizer_type roberta-base
#random table as a premsie
python3 preprocess_roberta.py --max_len 512 --data_dir ./../../temp/data/ --in_dir parapremiserand --out_dir ../processed/parapremiserand --single_sentence 0 --tokenizer_type roberta-base
# random table as a premsie
python3 preprocess_roberta.py --max_len 512 --data_dir ./../../temp/data/ --in_dir parapremise --out_dir ../processed/only --single_sentence 1 --tokenizer_type roberta-base
# para as premise for reasoning
python3 preprocess_roberta.py --max_len 512 --data_dir ./../../temp/data/ --in_dir reasoning --out_dir ../processed/reasoning --single_sentence 0 --splits dev test_alpha3 --tokenizer_type roberta-base
