# Install Ansible

sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible --yes

# install pip3 and python3 as ansible comes with python 2
sudo apt install python3.8 --yes
sudo apt install python3-pip
sudo pip3 install --upgrade pip

# Installing aws deps
pip3 install awscli # aws command line interface ----> allows us to
pip3 install boto
pip3 install boto3

# get the uptime of this command
ansible all -a uptime --become
# update and upgrade packages
ansible host_a -m apt -a "upgrade=yes update_cache=yes" --become