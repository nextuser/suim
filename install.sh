#!/bin/bash

# 安装目录
INSTALL_DIR="/usr/bin"
SUIM_REPO="https://raw.githubusercontent.com/nextuser/suim/main"

# 颜色输出
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}开始安装 Suim...${NC}"

# 检查必要的命令
for cmd in curl wget tar; do
    if ! command -v $cmd &> /dev/null; then
        echo "错误: 需要安装 $cmd"
        exit 1
    fi
done

# 创建必要的目录
mkdir -p "$HOME/.suim/versions"

# 下载 suim 脚本
echo "下载 suim 脚本..."
sudo curl -o "$INSTALL_DIR/suim" "$SUIM_REPO/suim"
sudo chmod +x "$INSTALL_DIR/suim"

echo -e "${GREEN}Suim 安装完成！${NC}"
echo "使用方法："
echo "  suim list              # 列出已安装的版本"
echo "  suim version           # 显示当前版本"
echo "  suim version-remote    # 显示可用的远程版本"
echo "  suim install <版本>     # 安装指定版本"
echo "  suim use <版本>        # 切换到指定版本"
echo "  suim uninstall <版本>   # 删除指定版本"