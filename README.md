# How to install PyTorch and Torchvision on your Jetson device
From [1] and [2] install the required version of PyTorch\
To install Torchvision:\
1. ``` git clone --recursive --branch <branch_name i.e. version> https://github.com/pytorch/vision ```\
   Note: Check the compatible Torchvision version for your PyTorch version from [2] 
3. ``` cd vision ```
4. ``` export FORCE_CUDA=1 ``` # Only for devices with CUDA
5. ``` MAX_JOBS=1 python setup.py install ``` # MAX_JOBS=1 to reduce parallel computing and potential crash on Jetson

[1]: https://docs.nvidia.com/deeplearning/frameworks/install-pytorch-jetson-platform/
[2]: https://forums.developer.nvidia.com/t/pytorch-for-jetson/72048
