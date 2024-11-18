#!/bin/bash

echo "Atualizando Servidor Web"
apt update &&  upgrade -y
apt install apache2 -y
apt install unzip -y

echo "Baixando e copiando os arquivos de aplicação.."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip linux-site-dio
cd linux-site-dio
cp -R * /var/www/html/

echo "Finalizado.."
