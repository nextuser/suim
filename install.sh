#!/bin/bash

# 安装目录
INSTALL_DIR="/usr/local/bin"
SUIM_REPO="https://raw.githubusercontent.com/nextuser/suim/main"

# 颜色输出
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}begin to install  Suim...${NC}"

# 检查必要的命令
for cmd in curl wget tar; do
    if ! command -v $cmd &> /dev/null; then
        echo "eror,need install $cmd first"
        exit 1
    fi
done

# 创建必要的目录
mkdir -p "$HOME/.suim/versions"

# 下载 suim 脚本
echo "downloading suim ..."
sudo curl -o "$INSTALL_DIR/suim" "$SUIM_REPO/suim"
sudo chmod +x "$INSTALL_DIR/suim"

echo -e "${GREEN}Suim installed！${NC}"
$INSTALL_DIR/suim