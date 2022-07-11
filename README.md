# README

# Movie API

> API que retorna catálogo de filmes e series da Netflix no formato JSON.

## 💻 Como instalar

Para instalar o projeto em sua máquina, siga os seguintes passos:

Clone este repositório e instale as dependências com os seguintes comandos em seu terminal:
```
bundle install
```
```
yarn install
```

Então para alimentar o primeiro EndPoint com a base dados proveniente do arquivo csv presente neste projeto rode o comando:
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

* O catálogo com todos os filmes está disponível no path:
```
http://localhost:3000/api/v1/movies/
```
* Você poderá acessar o registros individuais pelo nome do título ou id:
```
http://localhost:3000/api/v1/movies/<uuid>
```
```
http://localhost:3000/api/v1/movies/title/<title_name>
```

* Também é possível filtrar a listagem por gênero(movie/tv-show), ano e país:
```
http://localhost:3000/api/v1/movies/genre/<nome-do-genero>
```

```
http://localhost:3000/api/v1/movies/year/<ano>
```
```
http://localhost:3000/api/v1/movies/country/<país>
```
```
http://localhost:3000/api/v1/movies/genre/<genero>/year/<ano>
```
```
http://localhost:3000/api/v1/movies/genre/<genero>/year/<ano>/country/<país>
```

* Todos espaços em branco(' ') devem ser trocados por traço('-') para efetuar a busca.
* Também todas as buscas são case-insensitive.

Enjoy =)
