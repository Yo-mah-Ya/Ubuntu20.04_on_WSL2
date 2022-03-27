#!/usr/bin/env bash

cd ~
# dependencies
apt install -y \
    libreadline-dev libncursesw5-dev \
    libsqlite3-dev libgdbm-dev libbz2-dev liblzma-dev \
    zlib1g-dev libffi-dev libdb-dev

# pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo -e "\n# Python" >> ~/.bashrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init --path)"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
source ~/.bashrc

# insatll version 3.9.10
pyenv install 3.9.10
pyenv global 3.9.10

# install pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python get-pip.pyy
pip install --upgrade pip
pip install poetry

# install Python libraries
apt install libpq-dev -y
# pip install awscli beautifulsoup4 boto3 coverage django flask flask-cors gunicorn gspread
# pip install numpy openpyxl pandas requests pipdeptree psycopg2 pyarrow pycrypto pyorc pyspark
# pip install pytest python-dotenv selenium scikit-learn scipy uWSGI xlrd xlwt
