# Hello Everyone!
Welcome to my first major bash scripting project, a simple bash port scanner!
the concept is fairly simple, connections are made with /dev/tcp/ip/port, if the port is open, it will print it out to the terminal. If closed, the output will be redirected to /dev/null!
I may add a switch for UDP at a later date, it should be fairly simple.
# Usage:
```
chmod +x ./spookyscan.sh
./spookyscan.sh -i <ip> -p <High port cap>
```
Example: 
```
root@Sp00kySec:~/Scripts# ./spookyscan.sh -i 192.168.1.1 -p 1024                                                                                                                                                                                                             Port 53 is open
Port 80 is open
Port 139 is open
Port 443 is open
Port 445 is open
root@Sp00kySec:~/Scripts#
```
Enjoy! Remember to use this only against networks/devices you own or have explicit permission to do so. I am in no way reponsible for what you do!
