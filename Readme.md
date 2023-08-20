# Configuration for the xray reality

```
cd /root
mkdir /root/xray-configuration/
cd /root/xray-configuration/
wget https://raw.githubusercontent.com/majidrezarahnavard/xray-configuration/main/install.sh
sudo chmod +x /root/xray-configuration/install.sh
bash /root/xray-configuration/install.sh

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

# sample configuration

vless://a6c997ea-dfb4-4b8c-9b85-23c284ac34cb@ip:8443?encryption=none&security=reality&sni=datadoghq.com&fp=chrome&pbk=ppvcYiM3tSVsvSSATN4-4_vpySUlr7bDTfHWCdQNEhg&sid=0123456789abcdef&spx=%2Fdoggo&type=grpc#Moscow%20reality%20test


vless://a6c997ea-dfb4-4b8c-9b85-23c284ac34cb@ip:443?encryption=none&security=reality&sni=datadoghq.com&fp=chrome&pbk=ppvcYiM3tSVsvSSATN4-4_vpySUlr7bDTfHWCdQNEhg&sid=0123456789abcdef&spx=%2Fdoggo&type=tcp&headerType=none#Moscow%20reality%20test