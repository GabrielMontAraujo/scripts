#!/bin/bash

echo "Atualizando pacotes..."
sudo apt update -y && sudo apt upgrade -y

echo "Instalando Nginx..."
sudo apt install nginx -y

echo "Habilitando e iniciando o serviço..."
sudo systemctl enable nginx
sudo systemctl start nginx

echo "Status do Nginx:"
sudo systemctl status nginx | grep Active
