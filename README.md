# [Microblog em Ruby on Rails](http://polar-reef-5545.herokuapp.com/)

## Funcionalidades / UseCases

#### O usuário pode:
- Realizar o login;

#### O usuário logado pode:
- Criar postagens;
- Ver as postagens criadas com paginação;
- Excluir suas postagens;
- Buscar por outros usuários;
- Seguir outro usuário;
- Deixar de seguir um usuário;
- Ver um perfil criado;
- Alterar dados do seu perfil;
- Alterar sua senha;
- Realizar o logout;

#### O usuário logado e Não logado podem;
- Ver um perfil criado através da Busca do Perfil;
  - Ver as postagens do perfil clicando no botão "Ver Timeline";
Obs: A Busca do perfil é feita por: nome ou username ou email ou site;

#### Listagens
- Listar quem o usuário está seguindo;
- Listar seus seguidores;
 
## Versões Utilizadas

- Ruby 2.1.5 
- Rails 4.2.3

## Como inicializar o projeto:
- Clonar o projeto em um diretorio de sua preferência;

- Criar o banco de dados - SQLITE3
```sh
rake db:create && db:migrate
```

- Popular o banco de dados
```sh
rake db:seed
```

- Inicializar o servidor

```sh
rails s
```
## Todo
- Receber notificação ao ser seguido por um usuário (Todo);
- Escrever testes

## Contribuições
- Revisão de código
