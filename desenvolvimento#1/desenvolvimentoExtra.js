

// Acesse o site OneCompiler (Link em anexo), copie e cole o array 'numerosDaSorte', e logo em seguida escreva o código necessário para avaliar cada elemento do array e imprimir uma frase seguindo algum dos seguintes três modelos:

// - X é par e menor que 50
// - X é menor que 50
// - X é maior que 50


numerosDaSorte = [37, 14, 26, 5, 94, 87];


//Avaliando se número é par e menor que 50:
for (var i = 0; i < numerosDaSorte.length; i++) {
  if(numerosDaSorte[i] < 50 && numerosDaSorte[i] % 2 == 0){
    console.log("Numero é par e menor que 50: ",numerosDaSorte[i]);
  }
  if(numerosDaSorte[i] < 50){
    console.log("É menor que 50: ",numerosDaSorte[i]);
  }
  if(numerosDaSorte[i] > 50){
    console.log("É maior que 50: ",numerosDaSorte[i]);
  }
}