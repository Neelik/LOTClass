
export CUDA_DEVICE_ORDER=PCI_BUS_ID
export CUDA_VISIBLE_DEVICES=0

DATASET=imdb
LABEL_NAME_FILE=label_names.txt
TRAIN_CORPUS=train.txt
TEST_CORPUS=test.txt
TEST_LABEL=test_labels.txt
MAX_LEN=256
TRAIN_BATCH=8
ACCUM_STEP=16
EVAL_BATCH=32
GPUS=1
MCP_EPOCH=4
SELF_TRAIN_EPOCH=4
COLAB=/content/LOTClass/

python ${COLAB}src/train.py --dataset_dir ${COLAB}datasets/${DATASET}/ --label_names_file ${LABEL_NAME_FILE} \
                    --train_file ${TRAIN_CORPUS} \
                    --test_file ${TEST_CORPUS} --test_label_file ${TEST_LABEL} \
                    --max_len ${MAX_LEN} \
                    --train_batch_size ${TRAIN_BATCH} --accum_steps ${ACCUM_STEP} --eval_batch_size ${EVAL_BATCH} \
                    --gpus ${GPUS} \
                    --mcp_epochs ${MCP_EPOCH} --self_train_epochs ${SELF_TRAIN_EPOCH} \
                    