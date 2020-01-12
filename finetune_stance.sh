export GLUE_DIR=GLUE
export TASK_NAME=STANCE2

python ./examples/run_glue.py \
  --model_type bert \
  --model_name_or_path bert-base-uncased \
  --task_name $TASK_NAME \
  --do_train \
  --do_eval \
  --do_lower_case \
  --data_dir $GLUE_DIR/$TASK_NAME \
  --max_seq_length 128 \
  --per_gpu_train_batch_size 32 \
  --learning_rate 2e-5 \
  --num_train_epochs 5.0 \
  --output_dir $TASK_NAME/bert/ \
  --logging_steps 200 \
  --evaluate_during_training \
