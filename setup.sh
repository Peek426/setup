#!/bin/bash

# 更新软件包
sudo apt update

# 安装所需的包
sudo apt install -y python3-pip python3-tk ttf-mscorefonts-installer imagemagick imagemagick-6.q16 ffmpeg

# 安装 Python 库
pip install telethon
pip install python-socks[asyncio]
pip install sympy
pip install cryptg
pip install apscheduler
pip install telebot
pip install matplotlib
pip install captcha
pip install FastTelethonhelper
pip install moviepy
pip install pymysql
pip install beautifulsoup4
pip install aiohttp

# 获取 Python 版本
PYTHON_VERSION=$(python3 -c 'import sys; print(f"{sys.version_info.major}.{sys.version_info.minor}")')

# 从 GitHub 下载并替换文件
sudo curl -o /etc/ImageMagick-6/policy.xml https://raw.githubusercontent.com/Peek426/setup/refs/heads/main/policy.xml
sudo curl -o /usr/local/lib/python${PYTHON_VERSION}/dist-packages/FastTelethonhelper/__init__.py https://raw.githubusercontent.com/Peek426/setup/refs/heads/main/__init__.py
sudo curl -o /usr/local/lib/python${PYTHON_VERSION}/dist-packages/telethon/client/uploads.py https://raw.githubusercontent.com/Peek426/setup/refs/heads/main/uploads.py

echo "所有操作已完成！"
