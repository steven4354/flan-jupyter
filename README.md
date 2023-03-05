# flan-jupyter

repo to track testing of open sourced flan models

## process

testing google cloud vm instance with a t4 gpu for inference

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

### git lfs

prev

```
steven@instance-2:~/flan-t5-xxl$ ls
README.md                      generation_config.json        special_tokens_map.json  tokenizer_config.json
config.json                    model.safetensors.index.json  tf_model.h5.index.json
flax_model.msgpack.index.json  pytorch_model.bin.index.json  tokenizer.json
```
