#!/bin/sh
configureRepo() {(
cat > /etc/yum.repos.d/CentOS-Base.repo <<EOM
[base]
name=CentOS-$releasever - Base
mirrorlist=http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=os&infra=$infra
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
EOM
)}

installNFS() {(
yum -y install nfs-utils &> /home/saimsh/output.txt
)}

configureRepo
installNFS