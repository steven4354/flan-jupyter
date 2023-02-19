### running this locally
new
```bash
source .env \
&& sudo docker build -t jupyter . \
&& sudo docker run -v ./flan-t5-xxl:/app/flan-t5-xxl -p 8888:8888 jupyter
```

old
```bash
source .env \
&& sudo docker build -t jupyter . \
&& sudo docker run --memory=4g -v $(pwd):/app -p 8888:8888 jupyter
```

ec2 access
```
http://18.216.43.17:8888/?token=<token>
```

### download huggingface models
```
git lfs
git clone https://huggingface.co/google/flan-t5-xxl
```

https://huggingface.co/docs/hub/models-downloading#using-git
https://stackoverflow.com/questions/48734119/git-lfs-is-not-a-git-command-unclear
https://huggingface.co/google/flan-t5-xxl

### aws ec2, set up ubuntu 20.0.4 with all the needed deps

git
```bash
sudo apt update
sudo apt install git
```

docker
```bash
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install docker-ce
```

git lfs
```bash
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get install git-lfs
```

### using screens
```
screen -ls
screen -r <name>
screen -X sessionname <name>
screen -X sessionname jupyter-notebook
screen -S 2162 -X sessionname download-model
```

### ssh into ec2
move .pem file to this folder
go to "connect" -> "connect via ssh client"

```
chmod 400 your-key-pair.pem
chmod 400 steven-new.pem
ssh -i "steven-new.pem" ubuntu@ec2-18-216-43-17.us-east-2.compute.amazonaws.com
```

### docker to access model files
```
docker run -v /path/to/model_files:/app/model_files -p 8888:8888 my_docker_image
docker run -v ./flan-t5-xxl:/app/flan-t5-xxl -p 8888:8888 jupyter
```