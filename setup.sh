#!/bin/bash
START_TIME=$SECONDS
# 获取 Python 版本
PYTHON_VERSION=$(python3 -c 'import sys; print(f"{sys.version_info.major}.{sys.version_info.minor}")')
# 更新软件包
sudo apt update
sudo apt install -y python3-venv  python3-pip
sudo apt install -y python3-dev libmysqlclient-dev
sudo apt install -y ifstat
sudo apt install -y default-libmysqlclient-dev build-essential pkg-config
# 安装所需的包
sudo apt install -y python3-pip python3-tk ttf-mscorefonts-installer imagemagick imagemagick-6.q16 ffmpeg
python3 -m venv myenv # 创建虚拟环境
source myenv/bin/activate # 激活虚拟环境
# 安装 Python 库
pip install telethon
pip install python-socks[asyncio]
pip install sympy
pip install pyyaml
pip install cryptg
pip install telethon
pip install apscheduler
pip install telebot
pip install imagekitio
pip install matplotlib
pip install captcha
pip install FastTelethonhelper
pip install moviepy==1.0.3 numpy>=1.18.1 imageio>=2.5.0 decorator>=4.3.0 tqdm>=4.0.0 Pillow>=7.0.0 scipy>=1.3.0 pydub>=0.23.0 audiofile>=0.0.0 opencv-python>=4.5
pip install pymysql
pip install beautifulsoup4
pip install aiohttp
pip install pandas
pip install seaborn

# 从 GitHub 下载并替换文件
sudo curl -o /etc/ImageMagick-6/policy.xml https://raw.githubusercontent.com/Peek426/setup/refs/heads/main/policy.xml
sudo curl -o ./myenv/lib/python${PYTHON_VERSION}/site-packages/FastTelethonhelper/__init__.py https://raw.githubusercontent.com/Peek426/setup/refs/heads/main/__init__.py
sudo curl -o ./myenv/lib/python${PYTHON_VERSION}/site-packages/telethon/client/uploads.py https://raw.githubusercontent.com/Peek426/setup/refs/heads/main/uploads.py
sudo curl -o ./myenv/lib/python${PYTHON_VERSION}/site-packages/moviepy/video/io/ffmpeg_reader.py https://raw.githubusercontent.com/Peek426/setup/refs/heads/main/ffmpeg_reader.py

ELAPSED_TIME=$(($SECONDS - $START_TIME))
echo "所有操作已完成！耗时：$ELAPSED_TIME 秒"
