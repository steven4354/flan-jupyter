## running this locally
```
source .env \
&& docker build -t jupyter . \
&& docker run --memory=4g -v $(pwd):/app -p 8888:8888 jupyter
```

## download huggingface models
https://huggingface.co/docs/hub/models-downloading#using-git
https://stackoverflow.com/questions/48734119/git-lfs-is-not-a-git-command-unclear
https://huggingface.co/google/flan-t5-xxl
```
git lfs
git clone https://huggingface.co/google/flan-t5-xxl
```

aws ec2, set up ubuntu 20.0.4 with all the needed deps
git
```
sudo apt update
sudo apt install git
```
docker
```
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install docker-ce
```
git lfs
```
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get install git-lfs
```

## using screens
```
screen -ls
screen -r <name>
screen -X sessionname <name>
screen -X sessionname jupyter-notebook
```