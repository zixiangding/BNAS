# BNAS: Efficient Neural Architecture Search Using Broad Scalable Architecture

Authors' implementation of "BNAS: Efficient Neural Architecture Search Using Broad Scalable Architecture" (2020) in TensorFlow.

Includes code for CIFAR-10 image classification.

Paper:  https://ieeexplore.ieee.org/abstract/document/9392299

Authors: Zixiang Ding, Yaran Chen, Nannan Li, Dongbin Zhao, Zhiquan Sun and C. L. Philip Chen. 

## Requirements

```
Python == 2.7, Tensorflow == 1.10.0
```
## Architecture search on CIFAR-10
To run the experiments on CIFAR-10, please first download the [dataset](https://www.cs.toronto.edu/~kriz/cifar.html). 

To run the BNAS experiments on the micro search space, please use the following scripts:

```
./scripts/cifar10_micro_search.sh
./scripts/cifar10_micro_final.sh
```
## Citation
If you use any part of this code in your research, please cite our [paper](https://arxiv.org/abs/1806.09055):
```
@article{ding2021bnas,
  title={BNAS: Efficient Neural Architecture Search Using Broad Scalable Architecture},
  author={Ding, Zixiang and Chen, Yaran and Li, Nannan and Zhao, Dongbin and Sun, Zhiquan and Chen, CL Philip},
  journal={IEEE Transactions on Neural Networks and Learning Systems},
  year={2021},
  publisher={IEEE}
}
```
