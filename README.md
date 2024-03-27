<div align="center">  

<h1> Fakedex - Vue </h1>

![Javascript](https://img.shields.io/badge/-Javascript-1e272e?style=for-the-badge&logo=javascript)&nbsp;
![Vue.js](https://img.shields.io/badge/-Vue.js-1e272e?style=for-the-badge&logo=vue.js)&nbsp;
![Node.js](https://img.shields.io/badge/-Node.js-1e272e?style=for-the-badge&logo=node.js)&nbsp;
</div>

<h1> Descrição: </h1>
<p>
Aplicação frontend de Fakedex (Pokedex) consumindo dados da API PokeAPI.

</p>

<h1> Tecnologias: </h1>
<p>

- <b>Bulma</b> - Framework Css.
- <b>Axios</b> - Cliente Http para Node.js
- <b>Docker</b> - Conteinizando a imagem do Node.js.

</p>

<h1> Como utilizar: </h1>
<p>
A solução foi construida utilizando containeres. Para isso, é necessário que tenha instalado o Docker em seu computador.
Para Linux e MacOS, o Docker já vem instalado. Para Windows, há a necessidade de instalar o WSL2 e o o Docker Desktop.
</p>

<h3> Baixe o projeto </h3>

```sh
git clone https://github.com/clevernvs/pokedex-vue.git

# ou

git clone git@github.com:clevernvs/pokedex-vue.git
```
<h3> Inicie o container </h3>

```sh
docker-compose up -d -build
```

<h3> Utilizando o projeto </h3>

```sh
# Entra na pasta da aplicação
cd app

# Instala as dependências
npm install

# Inicia o servidor de desenvolvimento
npm run dev

```
