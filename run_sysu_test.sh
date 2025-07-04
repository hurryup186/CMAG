
CUDA_VISIBLE_DEVICES=0 python test_sysu.py --batch-size 2 -a vit_base -d sysu_all --num-instances 2 --data-dir "./data/sysu" --iters 200 --self-norm --conv-stem \
-pp ./vit_base_ics_cfs_lup.pth --cls-token-num 4 --lamba-cross 0.4 --lamba-neighbor 0.5 --lamba-mate 0.03 --epochs 120  
