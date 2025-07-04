# CMAG: Cross-Modal Attention and Graph-Enhanced Memory for Unsupervised Visible-Infrared Person Re-Identification

**[Submitted to IEEE TCSVT]**

![](https://raw.githubusercontent.com/hurryup186/CMAG/main/fig/CMAG.png)


This repository contains the implementation of CMAG: Cross-Modal Attention and Graph-Enhanced Memory for Unsupervised Visible-Infrared Person Re-Identification.

## 📢 Code Availability Notice

We have made our **pre-trained model weights** and **evaluation code** publicly available to demonstrate the effectiveness of our method. 

**For the complete source code**: Due to intellectual property protection considerations, access to the full training source code requires authorization until the paper is officially accepted for publication. 

**How to obtain full source code:**
- Please contact us via email with your research affiliation and intended use
- Upon paper acceptance, the complete source code will be made fully open-source
- Contact: [zhangyifeng186@stu.gxnu.edu.cn]

We appreciate your understanding and look forward to sharing the complete implementation upon publication.

# Contributions

1. We introduce a circular topology structure that provides pseudo-label verification through detecting circular paths in feature space, effectively addressing the pseudo-label noise problem in unsupervised learning.
2. We design a cross-modal attention mechanism for Vision Transformers with residual fusion to balance modality-specific and shared information, solving the modality discrepancy issue between visible and infrared images.
3. We construct a graph-structured memory enhancement module with adaptive graph construction and multi-layer feature propagation to overcome batch training limitations and improve feature learning.
4. We integrate camera-specific clustering with circular structure constraints to reduce camera background bias, enhancing the model's generalization across different camera views.

# Prepare Datasets

Put SYSU-MM01 and RegDB dataset (run prepare_sysu.py and prepare_regdb.py to convert to market1501 format) into data/sysu and data/regdb. (Following previous work [ADCA](https://github.com/yangbincv/ADCA))

# Prepare Pre-trained model

Following [SDCL](https://github.com/yangbincv/SDCL), we adopt the self-supervised pre-trained models (ViT-B/16+ICS) from [Self-Supervised Pre-Training for Transformer-Based Person Re-Identification](https://github.com/damo-cv/TransReID-SSL?tab=readme-ov-file)

# Training

1. sh run_train_sysu.sh
2. sh run_train_regdb.sh

# Models

| Datasets | Rank-1 | mAP | Download |
| --- | --- | --- | --- |
| SYSU-MM01 (All Search) | 68.5% | 64.0% | [model](https://drive.google.com/drive/folders/1zTwPklmSfa_-kewe8JUQtK6o3GnWtL_O?usp=sharing) |
| RegDB (Visible to Infrared) | 94.7% | 86.4% | [model](https://drive.google.com/drive/folders/1MQC19Veykeo4eFk_LVAmJCwtynpmS0Mc?usp=drive_link) |

# Acknowledgment

Our implementation is mainly based on the following codebases. We gratefully thank the authors for their wonderful works.
[SDCL](https://github.com/yangbincv/SDCL). [ADCA](https://github.com/yangbincv/ADCA). [TransReID](https://github.com/damo-cv/TransReID-SSL?tab=readme-ov-file). [DC-former](https://github.com/ant-research/Diverse-and-Compact-Transformer). [CALR](https://github.com/leeBooMla/CALR)
