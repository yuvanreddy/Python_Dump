#python Installation on Linux

yum install wget -y

cd /opt

wget https://www.python.org/ftp/python/3.11.0/Python-3.11.0.tgz

tar -xvzf Python-3.11.0.tgz

#install dependencies 

yum install gcc openssl-devel bzip2-devel libffi-devel -y

cd Python-3.11.0

./configure

./configure --enable-optimizations

make

make altinstall

ls -lrt /usr/local/bin/

cd /usr/local/bin/

ln -s python3.11 python3
ln -s pip3.11 pip3
cd ..
python3 --version
pip3 --version
