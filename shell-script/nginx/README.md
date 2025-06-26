# 🧰 Script de Instalação do Nginx

Este script automatiza o processo de instalação do servidor web **Nginx** em sistemas Linux baseados em **Ubuntu/Debian** ou **CentOS/RHEL**.

## 📌 Funcionalidades

- Atualiza os pacotes do sistema
- Instala o Nginx
- Habilita o Nginx para iniciar automaticamente com o sistema
- Inicia o serviço Nginx
- Mostra o status do serviço após a instalação

## 📂 Arquivo

- `install_nginx.sh`: Script principal para instalação do Nginx

## 💻 Como usar

### 1. Clone o repositório ou crie o arquivo manualmente:

```bash
# Clonar o repositório
git clone https://github.com/seuusuario/seurepositorio.git
cd seurepositorio

# Ou crie o script manualmente
nano install_nginx.sh
# (Cole o conteúdo do script de instalação)
```

### 2. Torne o script executável

```bash
chmod +x install_nginx.sh
```

### 3. Execute o script

```bash
./install_nginx.sh
```

> ⚠️ **Certifique-se de estar executando como um usuário com permissões de sudo.**

## 📎 Requisitos

- **Sistema operacional:**
  - Ubuntu 18.04 ou superior
  - Debian 10 ou superior
  - CentOS 7/8 ou RHEL
- **Conexão com a internet**
- **Permissões de superusuário (sudo)**

## 🛠 Exemplo de uso

```bash
$ ./install_nginx.sh
Atualizando pacotes...
Instalando Nginx...
Habilitando e iniciando o serviço...
Status do Nginx:
● nginx.service - A high performance web server and a reverse proxy server
   Loaded: loaded (/lib/systemd/system/nginx.service; enabled)
   Active: active (running)
```

## 📄 Licença

Este projeto está licenciado sob a MIT License.