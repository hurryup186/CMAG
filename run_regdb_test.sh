CUDA_VISIBLE_DEVICES=0 python test_regdb.py -b 4 -a vit_base -d regdb_rgb --iters 100 --num-instances 4 --self-norm --hw-ratio 2 --conv-stem \
-pp ./vit_base_ics_cfs_lup.pth --cls-token-num 6
