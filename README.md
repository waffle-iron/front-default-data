# fron-default-data

Meus arquivos padrões de front-end.

_Inclui: sass, coffee e minificação dos arquivos front-end com `gulp`._

## Como usar:

- Instale: [node](https://www.google.com.br/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=0ahUKEwjwptnV-sfVAhVBTCYKHa2XAUYQFggnMAA&url=https%3A%2F%2Fnodejs.org%2Fen%2Fdownload%2F&usg=AFQjCNHZzjan4fCboPz6gh54VvJCUBVGEA), [npm](https://www.google.com.br/url?sa=t&rct=j&q=&esrc=s&source=web&cd=2&cad=rja&uact=8&ved=0ahUKEwjcvOjl-sfVAhVD4yYKHYXlB1QQFgguMAE&url=https%3A%2F%2Fdocs.npmjs.com%2Fcli%2Finstall&usg=AFQjCNFgC6Gf9Hhd0naw0MVA6uwOa4z12Q).
- Instale o `gulp` globalmente: `npm install -g gulp`
- Inicie o `npm`: `npm init`
- Instale as dependências: `npm install`

**Voê está pronto! :smiley:**

## Executando as tarefas (_tasks_)

Para iniciar a compilação adicione no seu arquivo:

````html
<html>
<head>
    <head>
        ...
        <title>Hello world!</title>
        <link rel="stylesheet" type="text/css" href="/path/to/www/build/main.min.css">
    </head>
</head>
<body>
    ...
    <script type="text/javascript" src="/path/to/www/build/main.min.js"></script>
</body>
</html>
````

    Onde `/path/to/` é o caminho até o diretório `www`!

**IMPORTANTE:** Se está desenvolvendo localmente é cabível deixar o arquivo sem a minificação. Para isso simplesmente remova o '.min' dos arquivos.

---

### Trabalhando com `sass`

[estrutura](#estrutura-sass) | [compilando](#compilando-sass) | [assistindo](#assistindo-sass) | [finalizando](#finalizando-sass)

Para trabalhar com o `sass`, vá até o diretório `/dev/` e edite os arquivos dentro do diretório `/sass/`.

<a name="estrutura-sass"></a>

#### estrutura dos arquivos...

````
- atomic/
    - atoms/
    - molecules/
    - organisms/
    - _atoms.sass
    - _molecules.sass
    - _organisms.sass
- main.sass
````

_Este projeto tenta utilizar o [padrão de estrutura em átomos (atomic design)](http://bradfrost.com/blog/post/atomic-web-design/)._

- Dentro de `/atoms/` é cabível arquivos como: `_inputs.sass`.
- Dentro de `/organisms/` é cabível arquivos como: `_search.sass`.
- Dentro de `/atoms/` é cabível arquivos como: `_header.sass`.

        Há ainda muito o que melhorar no que tange esta estrutura!

<a name="compilando-sass"></a>

#### <a href="https://github.com/tadeubarbosa/front-default-data/blob/master/www/gulpfile.coffee#L21" targe="_blank">compilando...</a>

Após editar algum arquivo, abra o `prompt de comando`, vá até o diretório `/path/to/www/` e insira o comando:

    gulp sass

<a name="assistindo-sass"></a>

#### <a href="https://github.com/tadeubarbosa/front-default-data/blob/master/www/gulpfile.coffee#L91" targe="_blank">assistindo (watch) os arquivos...</a>

Caso queira que o `gulp` verifique constantemente se há alteração nos arquivos insira o comando:

    gulp sass:watch

<a name="finalizando-sass"></a>

#### <a href="https://github.com/tadeubarbosa/front-default-data/blob/master/www/gulpfile.coffee#L48" targe="_blank">finalizando com sass...</a>

Para finalizar com `sass`, ou seja, gerar/atualizar o arquivo `/www/build/main.min.css`, insira o comando:

    gulp css:minify

---

### Trabalhando com `coffee`

[estrutura](#estrutura-coffee) | [compilando](#compilando-coffee) | [assistindo](#assistindo-coffee) | [finalizando](#finalizando-coffee)

Para trabalhar com o `coffee`, vá até o diretório `/dev/` e edite os arquivos dentro do diretório `/angular/`.

<a name="estrutura-coffee"></a>

#### estrutura dos arquivos...

````
- angular/
    - config/       !-- configurações do  angularjs
    - controllers/  !-- gestão dos controllers
    - directives/   !-- gestão das diretivas
    - filters/      !-- gestão dos filtros
    - services/     !-- gestão dos serviços
    - (main.js)     !-- gerado pelo gulp, junção de todos os arquivos
````

<a name="compilando-coffee"></a>

#### <a href="https://github.com/tadeubarbosa/front-default-data/blob/master/www/gulpfile.coffee#L79" targe="_blank">compilando...</a>

Após editar algum arquivo, abra o `prompt de comando`, vá até o diretório `/path/to/www/` e insira o comando:

    gulp coffee

<a name="assistindo-coffee"></a>

#### <a href="https://github.com/tadeubarbosa/front-default-data/blob/master/www/gulpfile.coffee#L96" targe="_blank">assistindo (watch) os arquivos...</a>

Caso queira que o `gulp` verifique constantemente se há alteração nos arquivos insira o comando:

    gulp coffee:watch

<a name="finalizando-coffee"></a>

#### <a href="https://github.com/tadeubarbosa/front-default-data/blob/master/www/gulpfile.coffee#L62" targe="_blank">finalizando com coffee...</a>

Para finalizar com `coffee`, ou seja, gerar/atualizar o arquivo `/www/build/main.min.js`, insira o comando:

    gulp js:minify
    gulp js:all

---

### <a href="https://github.com/tadeubarbosa/front-default-data/blob/master/www/gulpfile.coffee#L88" targe="_blank">Finalizando com `sass` e `coffee` juntos:</a>

Para gerar os arquivos necessários para finalização, insira no comando:

    gulp production

---

Bem, por hora é isto. Há ainda muito o que melhorar nesta estrutura.
