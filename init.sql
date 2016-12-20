CREATE DATABASE elements_development TEMPLATE template1;
\c elements_development
CREATE USER elements WITH SUPERUSER PASSWORD 'elements';
CREATE DATABASE elements_test TEMPLATE elements_development;
\q
