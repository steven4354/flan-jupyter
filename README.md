```
source .env \
&& docker build -t jupyter . \
&& docker run --memory=4g -v $(pwd):/app -p 8888:8888 jupyter
```
