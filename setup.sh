# install git lfs
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get install git-lfs

# install pip
sudo apt update
sudo apt install python3-pip
pip3 --version
sudo apt update 
sudo apt install python2
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
sudo python2 get-pip.py
pip2 --version

# prep jupyter notebook
pip install -r requirements.txt

# clone down models
cd

git lfs
git clone https://huggingface.co/google/flan-t5-xxl

git lfs
git clone https://huggingface.co/t5-large



