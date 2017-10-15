groupadd tomcat
useradd -M -s /bin/nologin -g tomcat -d /opt/tomcat tomcat
cd ~
curl -O http://mirrors.advancedhosters.com/apache/tomcat/tomcat-8/v8.5.23/bin/apache-tomcat-8.5.23.tar.gz
#mkdir /opt/tomcat
tar xvf apache-tomcat-8.5.23.tar.gz -C /opt/tomcat --strip-components=1
cd /opt/tomcat
chgrp -R tomcat /opt/tomcat
chmod -R g+r conf
chmod g+x conf
chown -R tomcat webapps/ work/ temp/ logs/
