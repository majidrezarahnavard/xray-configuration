# Configuration for the xray reality

```
wget https://raw.githubusercontent.com/majidrezarahnavard/xray-configuration/main/install/sh
 
```

# change ssh port

For fast way install and run this service you need download below files and execute them. 
For security reason, I recommend you to change ssh port. change 9001 to any port that you want.

```
echo "Port 9001" >> /etc/ssh/sshd_config
systemctl restart sshd
service ssh restart
```
after you need ``` -p 9001 ``` for ssh connection.for example ```ssh root@ip -p 9001``` <br />


 9001 is the default port for SSH connection. don't use this port in setting file. 

If you had a below error please restart your server. 
```kex_exchange_identification: read: Connection reset by peer
Connection reset by x.x.x.x port 22
lost connection
```
or restart your service ```service ssh status``` and ```service ssh restart```

