## build

### first method
```shell

git clone https://github.com/zscboy/titan.git
或者
git clone https://github.com/Filecoin-Titan/titan.git

cd titan

docker build -t edge:latest -f ./cmd/titan-edge/Dockerfile .

docker build --build-arg HTTP_PROXY=http://192.168.0.132:1081 --build-arg HTTPS_PROXY=http://192.168.0.132:1081 -t edge:latest -f ./cmd/titan-edge/Dockerfile .
```



generate images in the local docker warehouse after construction,image name:edge,tag:latest.


## run

usage:

export KEY=YOUR_PRIVATE_KEY

export LOCATOR_API_INFO=YOUR_LOCATOR_API_INFO

docker run -d --name edge -p 1234:1234 -e KEY=$KEY -e LOCATOR_API_INFO=$LOCATOR_API_INFO edge:latest

YOUR_PRIVATE_KEY get from https://www.titannet.io/

test server for locator:

LOCATOR_API_INFO=https://locator.titannet.io:5000