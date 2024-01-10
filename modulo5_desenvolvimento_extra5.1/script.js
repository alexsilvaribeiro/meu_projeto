//Capturando titulo H1:
let titulo_H1 = document.getElementById("titulo");
console.log(titulo_H1);

//Manipulando a DOM com adição de texto a tag H1:
titulo_H1.innerText = "Texto adicionado H1 com propriedade innerText!";

//----------------------------------------------------------------------

//Capturando a lista ordenada:
let listaOrdenada_OL = document.getElementById("lista-ordenada");
console.log(listaOrdenada_OL);

//Manipulando a DOM com adição de LINKS a tag OL com innerHTML:
listaOrdenada_OL.innerHTML= `
<a href="https://google.com.br">GOOGLE</a><br>
<a href="https://g1.com.br">G1 NOTÍCIAS</a><br>
<a href="https://ge.globo.com">GLOBO ESPORTE</a><br>
`
//----------------------------------------------------------------------

//Capturando a lista desodernada:
let listaDesodernada_UL = document.querySelector("ul");
console.log(listaDesodernada_UL);

//Manipulando a DOM com adição de texto a tag UL com innerHTML:
listaDesodernada_UL.innerHTML = `
<li>Elemento 1 adicionado com innerHTML</li>
<li>Elemento 2 adicionado com innerHTML</li>
<li>Elemento 3 adicionado com innerHTML</li>
`
//----------------------------------------------------------------------

//Capturando o link:
let link_a = document.querySelector("a");
console.log(link_a)

//Manipulando a DOM com adição de texto a tag 'a' com innerText:
link_a.innerText = "Texto adicionado ao link com a propriedade innerText!"

//----------------------------------------------------------------------

// Crie um projeto com dois arquivos: index.html e script.js.
// No arquivo 'index' insira a estrutura base HTML e 
// dentro da tag 'body' inclua quatro tags vazias: h1, ul, a, ol. 
//Adicione o atributo id="titulo" à tag h1,o atributo 
//href="https://prozeducacao.com.br" à tag 'a', e o atributo 
//id="lista-ordenada" à tag 'ol'. 
//Na sequência, realize a conexão entre o arquivo HTML e o arquivo JavaScript.

// No arquivo script.js capture os quatro elementos criados, e use a 
//propriedade .innerText para adicionar 
// conteúdo textual aos elementos 'h1' e 'a', 
//e a propriedade .innerHTML para adicionar três itens simples na lista não ordenada,
//e três itens com links para outros sites na lista ordenada.