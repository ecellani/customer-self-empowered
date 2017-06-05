## Descrição
Prova de conceito do uso de microsserviço (ver: [Apresentação](https://github.com/ecellani/customer-self-empowered/blob/master/ms-poc-vivo-v2.pptx)).

## Recursos

### Ferramentas

| Categoria |  Ferramenta | Endereço  |  Acesso |
| ----------|-------------|-----------|---|
| Orquestrador de containers | Docker Swarm | DOCKER_HOST=54.89.147.97:4243 | 
| Registro de imagens | Docker Hub | [https://hub.docker.com/u/rodrigozc/](https://hub.docker.com/u/rodrigozc/) | | 
| Gerenciado de containers - dashboard | Portainer | [http://54.89.147.97:9000/#/](http://54.89.147.97:9000/#/) | admin / PocSysmap2017 |
| CI | Jenkins| [http://54.89.147.97:8080/](http://54.89.147.97:8080/)| admin / PocSysmap2017 | 
| Gerenciado de configuração | Consul | [http://54.89.147.97:8500](http://54.89.147.97:8500) |
| Broker Mensagens | RabbitMQ | [http://54.89.147.97:15672/#/](http://54.89.147.97:15672/#/)| guest / guest |

### Infraestrutura EC2
```
ssh -i "poc-microservices.pem" ubuntu@ec2-54-89-147-97.compute-1.amazonaws.com
ssh -i "poc-microservices.pem" ubuntu@ec2-54-174-74-243.compute-1.amazonaws.com
ssh -i "poc-microservices.pem" ubuntu@ec2-54-198-247-115.compute-1.amazonaws.com
```