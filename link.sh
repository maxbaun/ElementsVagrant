sudo ln -s -f /home/vagrant/.nvm/versions/node/v6.9.0/bin/node /usr/bin/nodejs
sudo ln -s -f /home/vagrant/.nvm/versions/node/v6.9.0/bin/npm /usr/bin/npm
sudo ln -s -f /home/vagrant/.nvm/versions/node/v6.9.0/bin/node /usr/bin/node
sudo ln -s -f /home/vagrant/.nvm/versions/node/v6.9.0/bin/sequelize /usr/bin/sequelize
sudo ln -s -f /home/vagrant/.nvm/versions/node/v6.9.0/bin/tsc /usr/bin/tsc
sudo ln -s -f /home/vagrant/.nvm/versions/node/v6.9.0/bin/node-sass /usr/bin/node-sass

NODE_PATH=/home/vagrant/.nvm/versions/node/v6.9.0/bin/node:/home/vagrant/.nvm/versions/node/v6.9.0/bin:/home/vagrant/.nvm/versions/node/v6.9.0/lib/node_modules:/usr/share/javascript
export NODE_PATH
