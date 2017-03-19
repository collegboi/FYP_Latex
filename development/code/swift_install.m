cd /usr/src  
sudo wget https://swift.org/builds/swift-3.0.2-release/ubuntu1604/swift-3.0.2-RELEASE/swift-3.0.2-RELEASE-ubuntu16.04.tar.gz
sudo gunzip < swift-3.0.2-RELEASE-ubuntu16.04.tar.gz | sudo tar -C / -xv --strip-components 1  
sudo rm -f swift-3.0.2-RELEASE-ubuntu16.04.tar.gz