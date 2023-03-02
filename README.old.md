## Next steps

Use GCP to set up a small GPU ubuntu instance to run Flan's largest version Flan-XXL to test out inference

Depending on results investigate retraining xxl

If the above works, throw out this code and track the above steps instead

### running this on ec2 instance

new
```bash
# clone
git clone https://github.com/steven4354/flan-jupyter
git submodule init

# get rid of docker
pip install -r requirements.txt

# if jupyter is missing just use sudo snap install jupyter
jupyter notebook --port=8888 --no-browser --ip=0.0.0.0
```

old
```bash
source .env \
&& sudo docker build -t jupyter . \
&& sudo docker run -v $(pwd):/app -p 8888:8888 jupyter
```

old
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

```bash
git lfs
git clone https://huggingface.co/google/flan-t5-xxl

# then move this folder into flan-jupyter
mv flan-t5-xxl ~/flan-jupyter
mv flan-t5-xxl ~
```

https://huggingface.co/docs/hub/models-downloading#using-git
https://stackoverflow.com/questions/48734119/git-lfs-is-not-a-git-command-unclear
https://huggingface.co/google/flan-t5-xxl

### aws ec2, set up ubuntu 20.0.4 with all the needed deps

ec2 details
- ubuntu 20.0.2
- security group open to ports
- 500 gb storage & 32 gb ram
- public subnet
- creates IP address

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

install pip
```
https://linuxize.com/post/how-to-install-pip-on-ubuntu-20.04/?utm_content=cmp-true
```

### using screens
```
screen -ls
screen -r <name>
screen -X sessionname <name>
screen -X sessionname jupyter-notebook
screen -X sessionname download-model-into-flan-jupyter
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

### add t5 xxl as submodule
```
screen
git submodule add https://huggingface.co/google/flan-t5-xxl
```
