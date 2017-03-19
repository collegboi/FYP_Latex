useradd -d /home/USERNAME -m -s /bin/bash USERNAME  
echo "USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers  

passwd USERNAME  