export BERT_DIR=./chinese_roberta_wwm_ext_L-12_H-768_A-12
export MY_DATA_DIR=./data/
CUDA_VISIBLE_DEVICES=3 python3 main.py \
  --task_name=answer_sent_labeling \
  --do_train=true \
  --do_eval=False \
  --data_dir=$MY_DATA_DIR \
  --vocab_file=$BERT_DIR/vocab.txt \
  --bert_config_file=$BERT_DIR/bert_config.json \
  --init_checkpoint=$BERT_DIR/bert_model.ckpt \
  --use_crf=False \
  --use_lstm=False \
  --lstm_hidden_dim=256 \
  --num_lstm_layers=1 \
  --max_seq_length=128 \
  --train_batch_size=8 \
  --eval_batch_size=8 \
  --predict_batch_size=8 \
  --learning_rate=5e-5 \
  --save_checkpoints_steps=50 \
  --max_steps_without_increase=300 \
  --num_train_epochs=1 \
  --output_dir=./checkpoint_answer_sent_labeling
