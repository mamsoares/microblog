# Microblog em Ruby on Rails:

## Funcionalidades / UseCases

#### O usuário pode:
- Realizar o login;
- Realizar o logout;

#### O usuário logado pode:
- Criar postagens;
- Ver as postagens criadas com paginação;
- Excluir suas postagens;
- Buscar por outros usuários;
- Seguir outro usuário;
- Deixar de seguir um usuário;
- Receber notificação ao ser seguido por um usuário (Todo);
- Ver um perfil criado;
- Alterar dados do seu perfil;
- Alterar sua senha;

#### O usuário logado e Não logado podem;
- Ver um perfil criado através da Busca do Perfil;
  - Ver as postagens do perfil clicando no botão "Ver Timeline";
Obs: A Busca do perfil é feita por: nome ou username ou email ou site;

#### Listagens
- Listar quem o usuário está seguindo;
- Listar seus seguidores;
 
## VERSÕES UTILIZADAS

* Ruby version 2.1.5 
* Rails version 4.2.3

## COMO UTILIZAR:
* Database creation - SQLITE3
```sh
rake db:create && db:migrate
```

* Database initialization
```sh
rake db:seed
```

* initialize server

```sh
rails s
```
## Todo
* Como rodar a suite de testes
 - Ainda não foi implementado

## Contribuições

* Escrever testes
* Revisão de código
