git clone https://github.com/collegboi/PerfectServer.git

cd PerfectServer
sudo swift build
sudo chown -R $USERNAME.$USERNAME .build/ Packages

sudo supervisorctl stop MyAwesomeProject
sudo cp -rf PerfectServer/.build/debug/* running/

sudo chown -R $USERNAME.$USERNAME running
sudo supervisorctl start MyAwesomeProject