# README

API feita em Ruby On Rails para consultar um CEP e registrar as consultas feitas.

Instalação:

* Faça um clone do repositório em uma pasta local.
```
git clone https://github.com/JacquesMarques/cep_api
```
* Entre na pasta do projeto:
```
cd cep_api
```
* Execute os comandos:
```
bundle install
rails db:create
rails db:migrate
rails db:seed
```
* Rodar o servidor:
```
rails server
```
Endpoints da API:
```
POST /api/v1/authenticate
  parâmetros:
    "email": "admin@cep.com",
    "password": "123456"
  
  retorno:
    {"auth_token":"eyJhbGciOiJI...VsA"}
  
GET 
  
```
