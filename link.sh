sudo ln -s -f /home/vagrant/.nvm/versions/node/v6.9.0/bin/node /usr/bin/nodejs
sudo ln -s -f /home/vagrant/.nvm/versions/node/v6.9.0/bin/npm /usr/bin/npm
sudo ln -s -f /home/vagrant/.nvm/versions/node/v6.9.0/bin/node /usr/bin/node

NODE_PATH=/home/vagrant/.nvm/versions/node/v6.9.0/bin/node:/usr/lib/node_modules:/usr/share/javascript
export NODE_PATH
