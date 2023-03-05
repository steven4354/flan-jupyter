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

