MODEL_FLAGS="--image_size 64 --num_channels 128 --num_res_blocks 3"
DIFFUSION_FLAGS="--diffusion_steps 4000 --noise_schedule linear"
TRAIN_FLAGS="--lr 1e-4 --batch_size 32"
NUM_GPUS=10
# mpiexec -n $NUM_GPUS python scripts/image_train.py --data_dir /home/ritwik/imagenet_64/images $MODEL_FLAGS $DIFFUSION_FLAGS $TRAIN_FLAGS
CUDA_VISIBLE_DEVICES=0 python scripts/image_train.py --data_dir /home/ritwik/imagenet_64/images $MODEL_FLAGS $DIFFUSION_FLAGS $TRAIN_FLAGS