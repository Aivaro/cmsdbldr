#!/bin/sh

chown dbspool:dbspool /var/cmsdbldr

# Install python stuff

cd $HOME
curl https://bootstrap.pypa.io/get-pip.py -o $HOME/get-pip.py
python $HOME/get-pip.py
pip install virtualenv virtualenvwrapper uwsgi honcho
rm -f $HOME/get-pip.py

# Setup venv

cd /opt/cmsdbldr/web
virtualenv --system-site-packages venv
. venv/bin/activate
pip install -r requirements.txt
chown -R dbspool:dbspool /opt/cmsdbldr/web/venv

# Install service

chkconfig --levels 345 cmsdbldr on

# Restart services

/sbin/service incrond restart
/sbin/service httpd restart
/sbin/service cmsdbldr start

# Fix firewall
/sbin/iptables -L -n | grep "dpt:80 "
if [ $? -ne 0 ]; then
  iptables -I INPUT 5 -i eth0 -p tcp --dport 80 -m state --state NEW,ESTABLISHED -j ACCEPT
  /sbin/service iptables save
  setsebool httpd_can_network_connect 1
fi