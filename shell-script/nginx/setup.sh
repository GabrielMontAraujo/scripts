#!/usr/bin/env bash

echo "➡️ Atualizando pacotes..."
sudo apt update -y && sudo apt upgrade -y
echo "✅ Pacotes atualizados com sucesso!"

echo "➡️ Verificando instalação do Nginx..."
if ! command -v nginx &> /dev/null; then
    echo "➡️ Instalando Nginx..."
    sudo apt install nginx -y
    echo "✅ Nginx instalado com sucesso!"
else
    echo "✅ Nginx já está instalado."
fi

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

echo "➡️ IP público da máquina:"
PUBLIC_IP=$(curl -s ifconfig.me || curl -s https://icanhazip.com)
if [ -n "$PUBLIC_IP" ]; then
    echo "✅ IP público: $PUBLIC_IP"
    echo "🌐 Você pode acessar o Nginx em: http://$PUBLIC_IP/"
else
    echo "❌ Não foi possível obter o IP público. Verifique sua conexão com a internet."
fi