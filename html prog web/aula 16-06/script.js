const pratos = ["lasanha", "pizza", "hamburguer", "sushi", "salada", "churrasco", "feijoada", "strogonoff", "macarronada", "tacos"];
const bebidas = ["água", "suco", "refrigerante", "vinho", "cerveja", "chá", "café", "leite", "chopp", "coquetel"];
function mostrarPratos() {
    let resultado = document.getElementById("resultado");
    resultado.innerHTML = "<h2>Pratos</h2>";
    for (let i = 0; i < pratos.length; i++) {
        resultado.innerHTML += "<p>" + (i + 1) + ". " + pratos[i] + "</p>";
    }
}

function mostrarBebidas() {
    let resultado = document.getElementById("resultado");
    resultado.innerHTML = "<h2>Bebidas</h2>";
    for (let i = 0; i < bebidas.length; i++) {
        resultado.innerHTML += "<p>" + (i + 1) + ". " + bebidas[i] + "</p>";
    }
}

function mostrarPratoPosicao() {
    let posicao = parseInt(document.getElementById("posicaoPrato").value, 10);
    let resultado = document.getElementById("resultado");
    if (posicao < 1 || posicao > pratos.length) {
        resultado.innerHTML = "<p>Escolha uma posição entre 1 e " + pratos.length + "</p>";
        return;
    }
    let pratoEscolhido = pratos[posicao - 1];
    resultado.innerHTML = "<h2>Prato da posição " + posicao + "</h2>";
    resultado.innerHTML += "<p>" + pratoEscolhido + "</p>";
}
function mostrarBebidasPosicao() {
    let posicao = parseInt(document.getElementById("posicaoBebida").value, 10);
    let resultado = document.getElementById("resultado");
    if (posicao < 1 || posicao > bebidas.length) {
        resultado.innerHTML = "<p>Escolha uma posição entre 1 e " + bebidas.length + "</p>";
        return;
    }
    let bebidaEscolhida = bebidas[posicao - 1];
    resultado.innerHTML = "<h2>Bebida da posição " + posicao + "</h2>";
    resultado.innerHTML += "<p>" + bebidaEscolhida + "</p>";
}
function mostrarPratoAleatorio() {
    let indiceAleatorio = Math.floor(Math.random() * pratos.length);
    let resultado = document.getElementById("resultado");
    let pratoAleatorio = pratos[indiceAleatorio];
    resultado.innerHTML = "<h2>Prato Aleatório</h2>";
    resultado.innerHTML += "<p>" + pratoAleatorio + "</p>";
}

function mostrarBebidaAleatoria() {
    let indiceAleatorio = Math.floor(Math.random() * bebidas.length);
    let resultado = document.getElementById("resultado");
    let bebidaAleatoria = bebidas[indiceAleatorio];
    resultado.innerHTML = "<h2>Bebida Aleatória</h2>";
    resultado.innerHTML += "<p>" + bebidaAleatoria + "</p>";
}