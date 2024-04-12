sudo apt-get -y update; 
sudo apt-get -y install python3-pip libopenblas-dev;

#Download the wheel file from [1] and set:
export TORCH_INSTALL=path/to/torch-2.2.0a0+81ea7a4+nv23.12-cp38-cp38-linux_aarch64.whl

python3 -m pip install --upgrade pip;
python3 -m pip install numpy==’1.26.1’;
python3 -m pip install --no-cache $TORCH_INSTALL;

git clone --recursive --branch <branch_name i.e. version> https://github.com/pytorch/vision
cd vision
export FORCE_CUDA=1
MAX_JOBS=1 python setup.py install
