//Capturando elemento h1 da div "pontos-turisticos"
let h1 = document.getElementById("h1Pontos-turisticos");
let botaoMais = document.getElementById("botao");

let cont = 0;

function maisUm{
    cont = cont + 1; //Incrementa a variável
    h1.innerText = cont; //Exibe seu valor como texto
}

botaoMais.addEventListener("click",maisUm);
