#/bin/bash

sudo add-apt-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get -y install ansible curl build-essential libvirt-bin libvirt-dev qemu qemu-utils python-pip
wget http://monbeau.infomaniak.ch/ext-packages/v/vagrant_1.9.2_x86_64.deb
sudo dpkg -i vagrant_1.9.2_x86_64.deb
vagrant plugin install vagrant-libvirt vagrant-mutate
sudo systemctl start libvirt-bin
sudo pip install jinja2 pydotplus

echo "you should be able to run Cumulus topology converter"
echo "python topology_converter.py -p libvirt your_file.dot"
