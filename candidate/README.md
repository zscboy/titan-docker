## build

### first method
```shell
git clone https://github.com/zscboy/titan.git
或者
git clone https://github.com/Filecoin-Titan/titan.git

cd titan

#### 不用代理:
docker build -t candidate:latest -f ./Dockerfile .

使用代理
配置docker使用proxy
mkdir /etc/systemd/system/docker.service.d
vi /etc/systemd/system/docker.service.d/http-proxy.conf
[Service]
Environment="HTTP_PROXY=http://proxy.example.com:80/"
Environment="HTTPS_PROXY=http://proxy.example.com:80/"

docker build --build-arg HTTP_PROXY=http://192.168.0.184:1081 --build-arg HTTPS_PROXY=http://192.168.0.184:1081 -t candidate:latest -f ./Dockerfile .
```



generate images in the local docker warehouse after construction,image name:edge,tag:latest.


## run

usage:

export KEY=YOUR_PRIVATE_KEY

export LOCATOR_API_INFO=YOUR_LOCATOR_API_INFO

docker run -d --name candidate -p 1234:1234 -e KEY=$KEY -e LOCATOR_API_INFO=$LOCATOR_API_INFO candidate:latest

YOUR_PRIVATE_KEY get from https://www.titannet.io/

test server for locator:

LOCATOR_API_INFO=https://locator.titannet.io:5000