#USERNAME = your new username you want to be called
useradd -d /home/USERNAME -m -s /bin/bash USERNAME  
echo "USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers 

#USERNAME = your username you just set
passwd USERNAME 