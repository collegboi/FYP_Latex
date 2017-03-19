mkdir -p {running,app/.git} && cd app/.git  
git init . --bare  
cd hooks && rm -rf *.sample  

#add the contents to file
nano post-receive

chmod +x post-receive

supervisord --version # check if installed
sudo apt-get install supervisor -y
service supervisor restart

cd /etc/supervisor/conf.d
sudo nano THE_APP_NAME.conf

sudo supervisorctl reread
sudo supervisorctl reload