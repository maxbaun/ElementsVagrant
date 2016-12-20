default: globals npm db migrate

run:
	cd /elements && npm run develop

init:
	sudo apt-get update
	sudo apt-get install build-essential -y
	sudo apt-get install libpq-dev -y
	sudo apt-get remove nodejs -y
	- sudo rm /usr/bin/nodejs
	- sudo rm /usr/bin/npm
	- sudo rm /usr/bin/node
	- cd /vagrant && sudo cp link.sh /etc/profile.d/
	- sudo rm /etc/profile.d/nodejs.sh
	@echo export NODE_ENV=development >> ~/.bashrc
	. ~/.bashrc

globals:
	npm i -g nodemon
	npm i -g concurrently
	npm i -g sequelize-cli
	npm i -g typescript@2.0.10
	npm i -g node-sass

npm:
	- cd /elements && npm install --no-bin-links --ignore-scripts
	- cd /elements/client && npm install --no-bin-links
	- cd /elements/server && npm install --no-bin-links
	- cd /elements && npm rebuild node-sass --no-bin-links

db:
	- psql -U postgres postgres -f init.sql

migrate:
	- cd /elements/server && npm rebuild libpq --no-bin-links
	- cd /elements/server && npm rebuild bcrypt --no-bin-links
	- cd /elements/ && tsc /elements/server/dbConfig.ts
	- cd /elements/server/ && sequelize init
	- cd /elements/server/ && sequelize db:migrate
