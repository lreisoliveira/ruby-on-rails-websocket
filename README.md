# Overview

- Websocket Rails

## Instalação

#### Clone do projeto
    git clone https://github.com/lreisoliveira/ruby-on-rails-websocket.git

## Configuração do projeto

##### Requisitos

- Ruby 2.3.1
    **Necessário instalação à parte do projeto**

- Rails 4.2.6
    **Necessário instalação à parte do projeto**

- Redis 3.0.4
    **Necessário instalação à parte do projeto**

- Thin 1.7.0
    **Consta no Gemfile da aplicação para instalação**

## Instalação do projeto

É necessáro permissão de execução para os arquivos da raiz do projeto **install.sh** e  **monitor.sh**

#### Executar a partir do diretório raiz do projeto

```
$ ./install.sh
```

Após a execução do comando acima, as perguntas abaixo serão apresentadas:

- **"Deseja configurar o projeto (config.yml)? <y/n>**

    Quando respondido 'y' será executado:

    ```
    cp $PROJECT_PATH/config/config.yml.sample $PROJECT_PATH/config/config.yml
    ```

- **"Deseja criar a configuração do servidor (thin.yml) ? <y/n>**

    Quando respondido 'y' será executado:

    ```
    cp $PROJECT_PATH/config/thin.yml.sample $PROJECT_PATH/config/thin.yml
    ```

- **"Deseja executar bundle install ? <y/n>**

    Quando respondido 'y' será executado:

    ```
    bundle install
    ```

## Configuração do Thin

  Acessar **/config/thin.yml** e localize as entradas chdir e log. Substituir "PROJECT_PATH" pelo path da aplicação.

## Iniciando o redis-server e thin-server automaticamente

Executar o script

```
./monitor.sh
```

Este script irá monitorar continuamente se os processos redis-server e thin-server estão sendo executados e caso algum ou dois fiquem inoperante, os reiniciará automaticamente.

- Se não for necessário este monitoriamento, os serviços podem ser executados manualmente seguindo os dois próximos passos abaixo.


## Iniciando o redis-server manualmente
Executar antes do **thin**
```
redis-server
```

## Iniciando o servidor de aplicação manualmente

Executar após **redis-server**
```
thin -C config/thin.yml start
```

## Testando o envio de mensagem

Acessar a URL

```
http://localhost:3000/enviar?mensagem=1234567890
```

onde http://localhost:3000 é o dns:porta padrão do rails. A porta pode ser alterada em 

```
/config/thin.yml
```


## Tunning

Há um limite de conexões simultâneas de acordo com o sevidor onde o sistema está instalado e para melhorar estes números é necessário
alterar configurações do kernel. Abaixo segue alguns links de referência.

- https://easyengine.io/tutorials/linux/increase-open-files-limit/

- http://stackoverflow.com/questions/11683850/how-much-memory-could-vm-use-in-linux

- http://www.phoenixframework.org/blog/the-road-to-2-million-websocket-connections

Alterações realizadas em Ubuntu 16.04 no arquivo abaixo, encontra-se na raiz deste projeto com o nome **limits.conf** 

No Ubuntu fica em

```
vim /etc/security/limits.conf
```
