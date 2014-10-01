#!/bin/sh
yum install zlib zlib-devel openssl openssl-devel -y
mkdir src
cd src
wget https://www.python.org/ftp/python/2.7.8/Python-2.7.8.tar.xz
tar xvf Python-2.7.8.tar.xz
cd Python-2.7.8
./configure --prefix=/opt/python
make && make install
mv /usr/bin/python /usr/bin/python.old
ln -s /opt/python/bin/python /usr/bin/python
echo "*install setup tools*"
wget https://bootstrap.pypa.io/ez_setup.py -O - | python
mv /usr/bin/easy_install /usr/bin/easy_install.old
ln -s /opt/python/bin/easy_install /usr/bin/easy_install
easy_install sqlalchemy mysql-python
cd ..
makedir pip
cd pip
curl -O https://pypi.python.org/packages/source/p/pip/pip-1.5.6.tar.gz
tar xvf pip-1.5.6.tar.gz
cd pip-1.5.6
python setup.py install
ln -s /opt/python/bin/pip /usr/bin/pip
cd ../..
rm -rf src
echo "don't forget change yum runtime envirronments to python2.6.6"
echo "vi /usr/bin/yum"
