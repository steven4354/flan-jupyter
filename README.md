# flan-jupyter

## setup

instance type
```markdown
- gcp
- virtual machine
- 1000 gb storage
- open all ports (firewall rule/target)
- 32gb ram 
- t4 nvidia
```

### setup steps

ssh into the vm, then:

```
screen
git clone https://github.com/steven4354/flan-jupyter
cd flan-jupyter
sh setup.sh
```

### alternatively, manually 

[download model files](https://github.com/steven4354/flan-jupyter/blob/main/README.old.md#download-huggingface-models)

clone this repo

[install pip](https://linuxize.com/post/how-to-install-pip-on-ubuntu-20.04/?utm_content=cmp-true)

run:
```bash
cd flan-jupyter
pip3 install -r requirements.txt

<!-- next -->
jupyter notebook --port=8888 --no-browser --ip=0.0.0.0
```

## troubleshoot

### jupyter or other pip deps not found

```
# add the pip dep location to path
# you can add the below to your `.bashrc` or `.zshrc` as well
export PATH="$HOME/.local/bin:$PATH"
```

### git lfs not downloading model files

looks like this?

```
steven@instance-2:~/flan-t5-xxl$ ls
README.md                      generation_config.json        special_tokens_map.json  tokenizer_config.json
config.json                    model.safetensors.index.json  tf_model.h5.index.json
flax_model.msgpack.index.json  pytorch_model.bin.index.json  tokenizer.json
```

do `git lfs fetch` [source](https://github.com/git-lfs/git-lfs/issues/325#issuecomment-122896144) (not working)

test [checkout](https://stackoverflow.com/questions/72830343/retrieve-original-files-after-a-git-clone-with-git-lfs) (working)
