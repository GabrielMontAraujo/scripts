# 🧰 Script de Instalação do Nginx

Este script automatiza o processo de instalação do servidor web **Nginx** em sistemas Linux baseados em **Ubuntu/Debian** ou **CentOS/RHEL**.

## 📌 Funcionalidades

- Atualiza os pacotes do sistema
- Verifica se o Nginx já está instalado para evitar reinstalação desnecessária
- Instala o Nginx (apenas quando necessário)
- Habilita o Nginx para iniciar automaticamente com o sistema
- Inicia o serviço Nginx
- Verifica e mostra o status do serviço após a instalação
- Exibe o IP público da máquina e a URL de acesso ao servidor Nginx
- Fornece feedback visual durante a execução com mensagens claras

## 📂 Arquivo

- `setup.sh`: Script principal para instalação do Nginx

## 💻 Como usar

### 1. Clone o repositório ou crie o arquivo manualmente:

```bash
# Clonar o repositório
git clone https://github.com/HBXcorp/scripts.git
cd scripts/shell-script/nginx

# Ou crie o script manualmente
nano setup.sh
# (Cole o conteúdo do script de instalação)
```

### 2. Torne o script executável

```bash
chmod +x setup.sh
```

### 3. Execute o script

```bash
./setup.sh
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
$ ./setup.sh
➡️ Atualizando pacotes...
✅ Pacotes atualizados com sucesso!
➡️ Verificando instalação do Nginx...
➡️ Instalando Nginx...
✅ Nginx instalado com sucesso!
➡️ Habilitando e iniciando o serviço...
✅ Serviço habilitado e iniciado!
➡️ Verificando status do Nginx:
✅ Nginx está ativo e funcionando corretamente!
➡️ IP público da máquina:
✅ IP público: 203.0.113.10
🌐 Você pode acessar o Nginx em: http://203.0.113.10/
```

## 📄 Licença

Este projeto está licenciado sob a MIT License.