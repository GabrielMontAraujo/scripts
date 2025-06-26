#!/bin/bash

echo "➡️ Atualizando pacotes..."
sudo apt update -y && sudo apt upgrade -y
echo "✅ Pacotes atualizados com sucesso!"

echo "➡️ Instalando Nginx..."
sudo apt install nginx -y
echo "✅ Nginx instalado com sucesso!"

echo "➡️ Habilitando e iniciando o serviço..."
sudo systemctl enable nginx
sudo systemctl start nginx
echo "✅ Serviço habilitado e iniciado!"

echo "➡️ Verificando status do Nginx:"
if [ "$(systemctl is-active nginx)" = "active" ]; then
    echo "✅ Nginx está ativo e funcionando corretamente!"
else
    echo "❌ Nginx não está ativo. Verifique os logs com: sudo journalctl -u nginx"
fi