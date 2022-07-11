# README

# Movie API

> API que retorna catalogo de filmes e series da Netflix no formato JSON.


## 💻 Como instalar

Para instalar o projeto em sua maquina, siga os seguintes passos:

Clone este repositório e instale as dependencias com os seguintes comandos em seu terminal:
```
bundle install
```
```
yarn install
```

Então para alimentar o primeiro EndPoint com a base dados proviniente do arquivo csv presente neste projeto rode o comando:
```
rails db:create db:migrate db:seed
```


## ☕ Inicializando Movie API

Rode a aplicação com
```
rails s
```
* O aplicativo inicializara em localhost:3000

## Acessando os registro e utilizando os filtros

O catalago com todos os filmes está disponivel no path:
```
http://localhost:3000/api/v1/movies/
```
Você podera acessar acessar o resgistros individuias pelo nome do titulo ou id:
```
http://localhost:3000/api/v1/movies/<uuid>
```
```
http://localhost:3000/api/v1/movies/title/<title_name>
```

Tabém é possivel filtrar a listagem por genero(movie/tv-show), ano e país:
```
http://localhost:3000/api/v1/movies/genre/<nome do genero>
```

```
http://localhost:3000/api/v1/movies/year/<ano>
```
```
http://localhost:3000/api/v1/movies/country/<país>
```
```
http://localhost:3000/api/v1/movies/title/<title_name>
```
```
http://localhost:3000/api/v1/movies/genre/<genero>/year/<ano>
```
```
http://localhost:3000/api/v1/movies/genre/<genero>/year/<ano>/country/<país>
```

Todos espaços em branco(' ') devem ser trocados por traço('-') para efetuar a busca.
Também todas as buscas são case-insensitive.

Enjoy =)
