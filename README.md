# 🐾 Vetly — Plataforma Veterinária em Nuvem

>NOTE
>Projeto acadêmico desenvolvido para fins educacionais.

## Integrantes

| Nome | RM |
|------|----|
| 👩‍💻 Anna Clara Russo Luca | RM561928 |
| 👨‍💻 Gabriel Duarte Maciel | RM565754 |
| 👨‍💻 Gustavo Tavares da Silva | RM562827 |
| 👨‍💻 Tiago Guedes da Costa | RM564731 |

---
# 📑 Sumário

- [📌 Descrição do Projeto](#-descrição-do-projeto)
- [🏗 Arquitetura da Solução](#-arquitetura-da-solução)
- [🚀 Tecnologias Utilizadas](#-tecnologias-utilizadas)
  - [Back-end](#back-end)
  - [Banco de Dados](#banco-de-dados)
  - [Containers](#containers)
  - [Cloud](#cloud)
- [💼 Benefícios para o Negócio](#-benefícios-para-o-negócio)
- [📦 Dockerfile](#-dockerfile)
- [🐳 Docker Compose](#-docker-compose)
- [☁️ Script Azure CLI](#️-script-azure-cli)
- [⚙️ How To — Instalação da Solução](#️-how-to--instalação-da-solução)
- [▶ Demonstração](#-demonstração)

---

# 📌 Descrição do Projeto

O **Vetly** é uma aplicação desenvolvida para gerenciamento de informações veterinárias utilizando arquitetura baseada em containers e infraestrutura em nuvem.

A solução foi construída utilizando **Java com Spring Boot**, banco de dados **Oracle XE**, conteinerização com **Docker** e provisionamento automatizado da infraestrutura utilizando **Azure CLI**.

O projeto tem como objetivo demonstrar a aplicação prática dos conceitos de:

- Cloud Computing
- Infraestrutura como Código (IaC)
- Containers
- Persistência de dados
- Redes Virtuais
- Deploy automatizado

---

# 🏗 Arquitetura da Solução

<img width="1298" height="520" alt="image" src="https://github.com/user-attachments/assets/ee54ae3d-57b9-46d9-8db8-185068b02b3a" />

---

# 🚀 Tecnologias Utilizadas

## Back-end
- Java 21
- Spring Boot
- Spring Security
- JPA / Hibernate

## Banco de Dados
- Oracle XE 21c

## Containers
- Docker
- Docker Compose

## Cloud
- Microsoft Azure
- Azure CLI

---

# 💼 Benefícios para o Negócio

A solução Vetly entrega diversos benefícios:

### Escalabilidade
A infraestrutura pode ser recriada rapidamente utilizando scripts.

### Automatização
Todo ambiente pode ser provisionado automaticamente utilizando Azure CLI.

### Portabilidade
A aplicação roda em qualquer ambiente com Docker.

### Persistência
Os dados permanecem armazenados mesmo após reinicialização dos containers.

### Facilidade de Deploy
Redução do tempo de configuração do ambiente.

---

# 📦 Dockerfile

Arquivo responsável por gerar a imagem da aplicação Java.

Local:

```text
Dockerfile
```

Principais etapas:

- Build da aplicação com Gradle
- Geração do arquivo JAR
- Execução utilizando Eclipse Temurin
- Exposição da porta 8080

---

# 🐳 Docker Compose

Arquivo responsável por subir toda solução.

Local:

```text
docker-compose.yml
```

Serviços:

- vetly-app → Aplicação Java
- oracle-db → Banco Oracle XE

Subir containers:

```bash
docker compose up -d
```

Parar containers:

```bash
docker compose down
```

Visualizar containers:

```bash
docker ps
```

---

# ☁️ Script Azure CLI

Arquivo:

```text
infra.sh
```

Responsável por:

- Criar Resource Group
- Criar VNet
- Criar Subnet
- Criar NSG
- Criar Máquina Virtual
- Instalar Docker automaticamente

Executar:

```bash
sed -i 's/\r$//' infra.sh

chmod +x infra.sh

./infra.sh
```

---

# ⚙️ How To — Instalação da Solução

## 1. Clonar repositório

```bash
git clone https://github.com/challenge-vetly/vetly-cloud.git
```

Entrar:

```bash
cd vetly-cloud
```

---

## 2. Subir containers

```bash
docker compose up -d
```

Verificar:

```bash
docker ps
```

---

## 3. Acessar aplicação

```text
http://20.151.220.216:8080/
```

---

# ▶ Demonstração

Para facilitar a validação do projeto, disponibilizamos uma demonstração completa da solução em vídeo.

O vídeo apresenta:

1. Execução do Script Azure CLI para criação da infraestrutura
2. Criação automática dos recursos na Azure
3. Execução da aplicação utilizando Docker
4. Funcionamento da aplicação Vetly
5. Persistência dos dados no banco Oracle

🎥 <a href="https://youtu.be/jIWc5TX1T4Q" target="_blank">Assistir demonstração no YouTube</a>




