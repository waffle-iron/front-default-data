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

#### estrutura dos arquivos...

<a name="estrutura-sass"></a>

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
- Dentro de `/organisms/` é cabível arquivos como: `_header.sass`.

        Há ainda muito o que melhorar no que tange esta estrutura!

#### compilando...

<a name="compilando-sass"></a>

Após editar algum arquivo, abra o `prompt de comando`, vá até o diretório `/path/to/www/` e insira o comando:

    gulp sass

#### assistindo (watch) os arquivos...

<a name="assistindo-sass"></a>

Caso queira que o `gulp` verifique constantemente se há alteração nos arquivos insira o comando:

    gulp sass:watch

#### finalizando com sass...

<a name="finalizando-sass"></a>

Para finalizar com `sass`, ou seja, gerar/atualizar o arquivo `/www/build/main.min.css`, insira o comando:

    gulp css:minify

---

### Trabalhando com `coffee`

[estrutura](#estrutura-coffee) | [compilando](#compilando-coffee) | [assistindo](#assistindo-coffee) | [finalizando](#finalizando-coffee)

Para trabalhar com o `coffee`, vá até o diretório `/dev/` e edite os arquivos dentro do diretório `/angular/`.

#### estrutura dos arquivos...

<a name="estrutura-coffee"></a>

````
- angular/
    - config/       !-- configurações do  angularjs
    - controllers/  !-- gestão dos controllers
    - directives/   !-- gestão das diretivas
    - filters/      !-- gestão dos filtros
    - services/     !-- gestão dos services
    - (main.js)     !-- gerado pelo gulp, junção de todos os arquivos
````

#### compilando...

<a name="compilando-coffee"></a>

Após editar algum arquivo, abra o `prompt de comando`, vá até o diretório `/path/to/www/` e insira o comando:

    gulp coffee

#### assistindo (watch) os arquivos...

<a name="assistindo-coffee"></a>

Caso queira que o `gulp` verifique constantemente se há alteração nos arquivos insira o comando:

    gulp coffee:watch

#### finalizando com coffee...

<a name="finalizando-coffee"></a>

Para finalizar com `coffee`, ou seja, gerar/atualizar o arquivo `/www/build/main.min.js`, insira o comando:

    gulp js:minify
    gulp js:all

---

### Finalizando com `sass` e `coffee` juntos:

Para gerar os arquivos necessários para finalização, insira no comando:

    gulp production

---

Bem, por hora é isto. Há ainda muito o que melhorar nesta estrutura.
