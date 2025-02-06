#!/bin/bash

# 安装目录
INSTALL_DIR="/usr/local/bin"
SUIM_REPO="https://raw.githubusercontent.com/nextuser/suim/refs/heads/main"

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

# 添加环境变量配置
SHELL_RC="$HOME/.bashrc"
if [ -f "$HOME/.zshrc" ]; then
    SHELL_RC="$HOME/.zshrc"
fi

# 添加 PATH 配置到 shell 配置文件
if ! grep -q "SUI_VERSION_PATH" "$SHELL_RC"; then
    echo '# Sui version path configuration' >> "$SHELL_RC"
    echo 'export SUI_VERSION_PATH="$HOME/.suim/versions/$(cat $HOME/.suim/current)"' >> "$SHELL_RC"
    echo 'export PATH="$SUI_VERSION_PATH:$PATH"' >> "$SHELL_RC"
    source $SHELL_RC
fi

echo -e "${GREEN}Suim installed！${NC}"
$INSTALL_DIR/suim