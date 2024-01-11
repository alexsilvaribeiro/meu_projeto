
//ADICIONANDO ELEMENTOS SIMPLES:
//Criando elemento HTML
let titulo_h1 = document.createElement("h1");
let paragrafo_p = document.createElement("p");

//populando e manipulando elemento HTML
titulo_h1.innerText = "produto à venda"
titulo_h1.id = "título"

paragrafo_p.innerText = "Este é curso de front-end com foco web designer"
paragrafo_p.id = "paragrafo"

//Capturando elemento pai via DOM
let body = document.querySelector("body");

//Adiciona elemento body titulo e paragrafo:
body.appendChild(titulo_h1);
body.appendChild(paragrafo_p);

//--------------------------------------------------------------------------------

//ADICIONANDO ELEMENTOS COMPLEXOS:

//Criando elemento div e salvar na variável "descricao_curso"
const descricao_curso = document.createElement("div");

//Usando innerHTML para inserir conteúdo HTML "descricao_curso" em um template String:
descricao_curso.innerHTML =

`<h2 class="nome">Front-end em 4 meses</h2>
<img src="./front-end.png.webp" alt="front-end" id="imagem" width=50%>
<p class="descricao">
Este é curso de front-end com foco em web designer, com duração de 4 meses.
</p>
<h3 class="preco">PREÇO: GRATUITO</h3>
`

//Adicionando elemento "postagemJavaScript" através appendChild:
body.appendChild(descricao_curso);

//--------------------------------------------------------------------------------

// Crie um projeto com dois arquivos: index.html e script.js. 
// No arquivo 'index' insira apenas a estrutura base HTML e a tag script para conectar o arquivo HTML com o arquivo de extensão JavaScript.
// Usando os conceitos aprendidos nesse módulo, e sem alterar o arquivo index.html, 
// adicione um título simples ao site com o id 'titulo', e um elemento que represente um produto à venda. 
// O produto precisa incluir pelo menos o nome, a descrição e o preço. Pode incluir outros "elementos filhos" se achar necessário como, por exemplo, uma imagem. 
// Procure usar o método simples e o método complexo, ensinados neste tópico.

