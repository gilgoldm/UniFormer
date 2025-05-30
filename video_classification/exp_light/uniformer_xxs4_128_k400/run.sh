work_path=$(dirname $0)
PYTHONPATH=$PYTHONPATH:./slowfast \
python tools/run_net_cls.py \
  --cfg $work_path/config.yaml \
  DATA.PATH_TO_DATA_DIR ./data_list/k400 \
  DATA.PATH_PREFIX ../rsu/data/kinetics-dataset/k400 \
  DATA.PATH_LABEL_SEPARATOR "," \
  TRAIN.EVAL_PERIOD 1 \
  TRAIN.CHECKPOINT_PERIOD 1 \
  TRAIN.BATCH_SIZE 256 \
  NUM_GPUS 8 \
  UNIFORMER.DROP_DEPTH_RATE 0.05 \
  SOLVER.MAX_EPOCH 110 \
  SOLVER.BASE_LR 4e-4 \
  SOLVER.WARMUP_EPOCHS 10.0 \
  SOLVER.WEIGHT_DECAY 0.1 \
  DATA.TEST_CROP_SIZE 128 \
  TEST.NUM_ENSEMBLE_VIEWS 1 \
  TEST.NUM_SPATIAL_CROPS 1 \
  TEST.TEST_BEST True \
  RNG_SEED 66667 \
  OUTPUT_DIR $work_path
