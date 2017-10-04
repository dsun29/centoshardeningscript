iptables -A INPUT -p tcp -s 192.231.71.2 --dport 22 -j ACCEPT
iptables -A OUTPUT -p tcp --destination 192.231.71.2 -j ACCEPT

echo 'sshd: all' >> /etc/hosts.deny
