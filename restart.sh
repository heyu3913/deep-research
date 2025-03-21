#!/bin/bash

# 停止并移除旧的容器
docker stop deep-research-web
docker rm deep-research-web

# 重新构建镜像
docker build -t deep-research-web .

# 启动新的容器
docker run -p 3000:3000 --name deep-research-web -d deep-research-web

echo "Deep Research Web has been restarted."
