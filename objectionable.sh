export CUDA_DEVICE_ORDER=PCI_BUS_ID
export CUDA_VISIBLE_DEVICES=0
DATASET=objectionable
LABEL_NAME_FILE=label_names.txt
TRAIN_CORPUS=train.txt
TEST_CORPUS=test.txt
TEST_LABEL=test_labels.txt
MAX_LEN=200
TRAIN_BATCH=16
ACCUM_STEP=4
EVAL_BATCH=128
GPUS=1
MCP_EPOCH=3
SELF_TRAIN_EPOCH=1
COLAB=/content/LOTClass/
TRAIN_GOOGLE_ID=
TEST_GOOGLE_ID=
TRAIN_LABELS_GOOGLE_ID=
TEST_LABELS_GOOGLE_ID=
LABEL_NAMES_GOOGLE_ID=
python ${COLAB}datasets/${DATASET}/get_data.py --train_labels_id ${TRAIN_GOOGLE_ID} \
                    --train_labels_id ${TRAIN_LABELS_GOOGLE_ID} \
                    --train_id ${TRAIN_GOOGLE_ID} --test_labels_id ${TEST_LABELS_GOOGLE_ID} \
                    --test_id ${TEST_GOOGLE_ID} --label_names_id ${LABEL_NAMES_GOOGLE_ID}
python ${COLAB}src/train.py --dataset_dir ${COLAB}datasets/${DATASET}/ --label_names_file ${LABEL_NAME_FILE} \
                    --train_file ${TRAIN_CORPUS} \
                    --test_file ${TEST_CORPUS} --test_label_file ${TEST_LABEL} \
                    --max_len ${MAX_LEN} \
                    --train_batch_size ${TRAIN_BATCH} --accum_steps ${ACCUM_STEP} --eval_batch_size ${EVAL_BATCH} \
                    --gpus ${GPUS} \
                    --mcp_epochs ${MCP_EPOCH} --self_train_epochs ${SELF_TRAIN_EPOCH} \
