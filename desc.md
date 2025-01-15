# 概述
参照nvm工具实现 sui 不同版本安装的方式. sui的不同版本,下载页面在 https://github.com/MystenLabs/sui/releases
实现一个脚本 suim
## 1.1 命令:列出当前下载过的sui版本
```bash
 suim list
``` 
## 1.2 命令: 显示当前版本
`
suim version 
`

## 1.3 命令: 显示下载网页上可下载的版本列表
```
sui versions
```
需要过滤掉重复的版本,显示的版本名称类似
mainnet-1.40.3 
testnet-1.40.2

## 1.4 suim install {version}  安装版本

比如 
```bash
suim install  mainnet-1.40.3 
```
此时命令行运行sui,调用的是
 ~/.suim/versions/mainnet-v1.40.3/sui
 
### 说明
根据从网站上下前执行环境,比如ubuntu的 linux x86_64 环境
从  https://github.com/MystenLabs/sui/releases 下载版本 mainnet-1.40.3 对应的压缩包url 
https://github.com/MystenLabs/sui/releases/download/mainnet-v1.40.3/sui-mainnet-v1.40.3-ubuntu-x86_64.tgz

并且把压缩包tgz文件解压到了~/.suim/versions/mainnet-v1.40.3 目录.这个目录下有个可执行文件sui
由于下载的文件比较大,下载的过程需要显示执行的进度
注意如果下载失败,需要清理掉~/.suim/versions/中的对应版本目录  ~/.suim/versions/mainnet-v1.40.3

## 1.5 suim use 来更换版本
### 说明
支持下载多个版本, 使用suim use 来更换不同版本
### 例子
- 下载多个版本
```bash
suim install mainnet-v1.40.3
suim install mainnet-v1.40.2
suim install mainnet-v1.40.1


```
- 更换当前版本

```bash
suim use mainnet-v1.40.2
```
此时调用调用sui 可执行文件,是调用的 ~/.suim/versions/mainnet-v1.40.2/sui

## 1.6 删除已经安装的吧按本
```bash
 suim uninstall testnet-v1.40.2

```
删除 ~/.suim/versions/testnet-v1.40.2
 