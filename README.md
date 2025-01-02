# Hidden Service (Alpine)

[![Docker Pulls](https://img.shields.io/docker/pulls/gabrielkey/hiddenservice?style=for-the-badge&logo=docker)](https://hub.docker.com/r/gabrielkey/hiddenservice/)
[![Docker Stars](https://img.shields.io/docker/stars/gabrielkey/hiddenservice?style=for-the-badge&logo=docker)](https://hub.docker.com/r/gabrielkey/hiddenservice/)

Esta imagem Docker utiliza [Alpine Linux](https://alpinelinux.org/) para criar um ambiente leve e de baixo consumo para hospedar um Serviço Oculto ([Hidden Service](https://community.torproject.org/onion-services/setup/)) na rede Tor, utilizando o servidor web [Nginx](https://nginx.org/en/docs/). Ideal para fornecer acesso seguro e anônimo a aplicativos e sites através da rede Tor.

## O que é o Alpine Linux?

O Alpine Linux é uma distribuição Linux construída em torno da biblioteca `musl libc` e do `BusyBox`. Sua imagem tem apenas 5 MB e conta com um repositório de pacotes muito mais completo em comparação com outras imagens baseadas no BusyBox. Isso faz do Alpine Linux uma excelente base para utilitários e até mesmo aplicações de produção. [Saiba mais](https://alpinelinux.org/) sobre o Alpine Linux e seu alinhamento com imagens de contêiner.

## O que é o Nginx?

O Nginx é um software de código aberto utilizado para hospedagem web, proxy reverso, cache, balanceamento de carga, streaming de mídia e muito mais. Ele foi criado inicialmente como um servidor web focado em máxima performance e estabilidade. Além de suas capacidades como servidor HTTP, o NGINX também pode atuar como servidor proxy para e-mails (IMAP, POP3 e SMTP), além de funcionar como proxy reverso e balanceador de carga para servidores HTTP, TCP e UDP. [Saiba mais.](https://nginx.org/en/docs/)

## O que é Rede TOR e Serviços Ocultos?
A rede TOR (The Onion Router) é um sistema que protege a privacidade dos usuários ao anonimizar o tráfego na internet por meio de uma rede de retransmissão em camadas, garantindo o sigilo da origem e destino dos dados. Serviços ocultos são aplicações que operam exclusivamente dentro da rede TOR, permitindo acesso anônimo e seguro a sites e serviços, como fóruns, mensagens e marketplaces.

Esses serviços utilizam endereços .onion, que só podem ser acessados por navegadores compatíveis com a rede TOR, como o Tor Browser. Eles são amplamente utilizados para comunicação privada e para proteger identidades em ambientes onde a censura ou vigilância é um risco. [Saiba mais.](https://www.torproject.org/)

## Principais Recursos

- Tamanho mínimo: A imagem é compacta, com poucas camadas.
- Uso eficiente de memória: Ideal para instalações simples e setups leves.
- Fácil integração: Clone o repositório para personalizações rápidas.

### Clonar repositório
```bash
# Clone o repositório do GitHub:
git clone https://github.com/gabrielkey/HiddenService-Alpine.git
```

# Criar uma instância

Primeiro, faça o **download da imagem** do Docker Hub para sua máquina local:

```bash
# Baixe a imagem diretamente do Docker Hub.
docker pull gabrielkey/hiddenservice:main
```

Em seguida, crie e inicie a instância com o nome `hiddenservice`:

```bash
# Criar e iniciar a instância
docker run --name hiddenservice -d gabrielkey/hiddenservice:main
```

Para manipular a instância e pegar as informações necessárias, entre no terminal do container utilizando o ash:

```bash
# Entrando no terminal do container
docker exec -it hiddenservice bin/sh
```

Dentro do container, use o comando abaixo para imprimir o link do seu serviço oculto:

```bash
# Exibindo o link do Hidden Service
cat /var/lib/tor/hidden_service/hostname
```

Agora, abra o Tor Browser, cole o link impresso no terminal e pronto! Você terá acesso ao seu serviço oculto na rede Tor.

![image](https://github.com/user-attachments/assets/7193654f-c180-495f-a55e-900ebd395496)

# Laboratório
Acesse o laboratório para descobrir como utilizar esta poderosa ferramenta e imagem para criar um serviço oculto simples, porém altamente seguro. O objetivo é configurar um ambiente de teste básico para hospedar uma aplicação pequena na rede Tor, com foco na simplicidade.

- [Laboratório, clique aqui!](https://github.com/gabrielkey/Docker-Labs/tree/main/labs/HiddenService)

# Links importantes!
- [Alpine Linux](https://alpinelinux.org/)
- [Instalar Docker](https://docs.docker.com/engine/install/)
- [GitHub da imagem](https://github.com/gabrielkey/HiddenService-Alpine)
- [Imagem no Docker hub](https://hub.docker.com/repository/docker/gabrielkey/hiddenservice/general)
- [Instalação manual de um Hidden Service](https://community.torproject.org/onion-services/setup/)
- [Laboratório](https://github.com/gabrielkey/Docker-Labs/tree/main/labs/HiddenService)
