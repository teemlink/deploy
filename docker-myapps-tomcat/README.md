# Docker-Compose安装指南

## 上传build-docker-compose目录到服务器

build-docker-compose为Docker-Compose执行的Project目录请勿改变目录结构。

## 服务器安装Docker

参考百度中Docker安装

## 服务器安装Docker-Compose

参考百度中Docker-Compose安装

## 运行Docker-Compose

命令
`
./build-image.sh

docker-compose up -d

`

**运行前需要确保mysql/my.cnf文件为只读状态。**



## 注意：

当资源改变后，重新运行 docker-compose build

第一次运行时，由于需要初始化数据库，可能比较慢，同时日志会显示连不上数据库，请耐心等待几分钟，如果一直不能正常运行，可以运行docker-compose down 后重新用docker-compose up -d 启动。

