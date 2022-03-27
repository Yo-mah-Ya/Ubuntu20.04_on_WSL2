#!/usr/bin/env bash

cd ~
#To avoid following Error, reinstall "GPG"
#gpg: can't connect to the agent: IPC connect call failed
# import the repository key from the following website
apt purge -y gpg && apt install -y ca-certificates gnupg1 && \
curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -


#You may determine the codename of your distribution by running lsb_release -c
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'


# Enable pgadmin4
sudo curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add
sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'

# install "PostgreSQL 12"
apt update -y
apt install -y postgresql-12 pgadmin4

echo -e "\n# PostgreSQL" >> ~/.bashrc
echo "service postgresql start" >> ~/.bashrc && source ~/.bashrc
