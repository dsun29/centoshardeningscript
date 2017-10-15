cp mongodb-org.repo /etc/yum.repos.d/

yum repolist
yum install mongodb-org
systemctl start mongod
systemctl enable mongod
