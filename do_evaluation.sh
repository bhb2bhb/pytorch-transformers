export MKL_NUM_THREADS=24
export OMP_NUM_THREADS=24

python do_evaluation.py --bert_model bert-base-cased --do_train --do_predict \
        --train_file /mnt/bhb0/data/train-v2.0.json --predict_file /mnt/bhb0/data/dev-v2.0.json \
        --cached_training_example_file /mnt/unilm/hanbao/bhb0/data/train-v2.0.baseline.cased.pickle \
        --cached_predict_example_file /mnt/unilm/hanbao/bhb0/data/dev-v2.0.baseline.cased.pickle \
        --train_batch_size 32 --learning_rate 3e-5 --num_train_epochs 1.0 --gradient_accumulation_steps 1 \
        --max_seq_length 384 --doc_stride 128 --output_dir /tmp/squad/ --save_checkpoint \
        --hub_path /mnt/unilm/hanbao/bhb0/pretrained_models --version_2_with_negative --seed -1
