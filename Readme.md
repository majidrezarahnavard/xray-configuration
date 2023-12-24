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


# run Xray
xray run -c reality.json

# sample configuration

vless://a6c997ea-dfb4-4b8c-9b85-23c284ac34cb@ip:8443?encryption=none&security=reality&sni=datadoghq.com&fp=chrome&pbk=ppvcYiM3tSVsvSSATN4-4_vpySUlr7bDTfHWCdQNEhg&sid=0123456789abcdef&spx=%2Fdoggo&type=grpc#Moscow%20reality%20test


vless://a6c997ea-dfb4-4b8c-9b85-23c284ac34cb@ip:443?encryption=none&security=reality&sni=datadoghq.com&fp=chrome&pbk=ppvcYiM3tSVsvSSATN4-4_vpySUlr7bDTfHWCdQNEhg&sid=0123456789abcdef&spx=%2Fdoggo&type=tcp&headerType=none#Moscow%20reality%20test


# Set header

send curl command and get response information then put it inside the headers.

```
curl -i http://mashhad1.irancell.ir:8080
```

HTTP/1.1 200 OK
Date: Tue, 19 Dec 2023 15:34:05 GMT
Connection: Keep-Alive
Content-Type: text/html
Content-Length: 109


"headers": {
             "Host": "http://mashhad1.irancell.ir",
             "Connection": [
                            "Keep-Alive"
                           ],
           }



# seh html inside the response

```
<html><head><title>OoklaServer</title></head><body><h1>OoklaServer</h1><p>It worked!<br /></p></body></html>
```

# example of irancell client config
vmess://eyJhZGQiOiI0NS4xNTYuMjQuMjI0IiwiYWlkIjoiMCIsImhvc3QiOiJtYXNoaGFkMS5pcmFuY2VsbC5pciIsImlkIjoiNTEwN2RhNzAtYjgyNy00NGQzLTlhYWEtNjM5MGJhYmIyYjA2IiwibmV0IjoidGNwIiwicGF0aCI6IiIsInBvcnQiOiI4MDgwIiwicHMiOiJzYXJpbmEiLCJzY3kiOiJhdXRvIiwic25pIjoiIiwidGxzIjoiIiwidHlwZSI6Imh0dHAiLCJ2IjoiMiJ9


irancell.json config

vmess://eyJhZGQiOiIxOTQuMTE2LjIxNS4yMzYiLCJhaWQiOiIwIiwiaG9zdCI6Im1hc2hoYWQxLmlyYW5jZWxsLmlyIiwiaWQiOiI1MTA3ZGE3MC1iODI3LTQ0ZDMtOWFhYS02MzkwYmFiYjJiMDYiLCJuZXQiOiJ0Y3AiLCJwYXRoIjoiLyIsInBvcnQiOiI0NDMiLCJwcyI6InNhcmluYSIsInNjeSI6ImF1dG8iLCJzbmkiOiIiLCJ0bHMiOiIiLCJ0eXBlIjoiaHR0cCIsInYiOiIyIn0=



new.json config

vmess://eyJhZGQiOiIxOTQuMTE2LjIxNS4yMzYiLCJhaWQiOiIwIiwiaG9zdCI6Im1hc2hoYWQxLmlyYW5jZWxsLmlyLHNoaXJhejEuaXJhbmNlbGwuaXIsdGFicml6MS5pcmFuY2VsbC5pcixzcGVlZHRlc3QxLmlyYW5jZWxsLmlyLGFodmF6MS5pcmFuY2VsbC5pcixlc2ZhaGFuMS5pcmFuY2VsbC5pciIsImlkIjoiMjgyMDgyNjctZjQyNy00YThmLWE2ZGUtZjY0MWE3ZjA0NzkzIiwibmV0IjoidGNwIiwicGF0aCI6Ii9zcGVlZHRlc3QiLCJwb3J0IjoiNDQzIiwicHMiOiJTYXJpbmEiLCJzY3kiOiJhdXRvIiwic25pIjoiIiwidGxzIjoiIiwidHlwZSI6Imh0dHAiLCJ2IjoiMiJ9

