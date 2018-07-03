mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
yum makecache
yum install git gcc gcc-c++ make automake autoconf libtool pcre pcre-devel zlib zlib-devel openssl-devel -y
mkdir -p /fastdfs/tracker
mkdir -p /fastdfs/storage
cd /usr/local/src
cd libfastcommon/
./make.sh && ./make.sh install
cd ../fastdfs/
./make.sh && ./make.sh install
cd ../nginx-1.12.2/
./configure --add-module=/usr/local/src/fastdfs-nginx-module/src
make && make install
