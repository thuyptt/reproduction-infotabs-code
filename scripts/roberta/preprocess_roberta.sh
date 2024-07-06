# usr/bin/bash
mkdir -p ./../../temp/processed_bert
# para as premise
python3 preprocess_roberta.py --max_len 512 --data_dir ./../../temp/data/ --in_dir parapremise --out_dir ../processed_bert/parapremise --single_sentence 0 --tokenizer_type bert-base-cased
# struct as a premsie
python3 preprocess_roberta.py --max_len 512 --data_dir ./../../temp/data/ --in_dir strucpremise --out_dir ../processed_bert/strucpremise --single_sentence 0 --tokenizer_type bert-base-cased
# wmd top 1 as a premise
python3 preprocess_roberta.py --max_len 512 --data_dir ./../../temp/data/ --in_dir wmdpremise1 --out_dir ../processed_bert/wmdpremise1 --single_sentence 0 --tokenizer_type bert-base-cased
# wmd top 3 as a premise
python3 preprocess_roberta.py --max_len 512 --data_dir ./../../temp/data/ --in_dir wmdpremise3 --out_dir ../processed_bert/wmdpremise3 --single_sentence 0 --tokenizer_type bert-base-cased
# dummy as a premise
python3 preprocess_roberta.py --max_len 512 --data_dir ./../../temp/data/ --in_dir dummypremise --out_dir ../processed_bert/dummypremise --single_sentence 0 --tokenizer_type bert-base-cased
#random table structure as a premise
python3 preprocess_roberta.py --max_len 512 --data_dir ./../../temp/data/ --in_dir strucpremiserand --out_dir ../processed_bert/strucpremiserand --single_sentence 0 --tokenizer_type bert-base-cased
#random table as a premsie
python3 preprocess_roberta.py --max_len 512 --data_dir ./../../temp/data/ --in_dir parapremiserand --out_dir ../processed_bert/parapremiserand --single_sentence 0 --tokenizer_type bert-base-cased
# random table as a premsie
python3 preprocess_roberta.py --max_len 512 --data_dir ./../../temp/data/ --in_dir parapremise --out_dir ../processed_bert/only --single_sentence 1 --tokenizer_type bert-base-cased
# para as premise for reasoning
python3 preprocess_roberta.py --max_len 512 --data_dir ./../../temp/data/ --in_dir reasoning --out_dir ../processed_bert/reasoning --single_sentence 0 --splits dev test_alpha3 --tokenizer_type bert-base-cased
