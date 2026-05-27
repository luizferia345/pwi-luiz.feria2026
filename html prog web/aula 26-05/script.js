function verificarReserva() {
    let horario = document.getElementById("horario").value;
    let resultado = document.getElementById("resultado");

    if (horario === "10" || horario === "14" || horario === "18") {
        resultado.textContent = "Horário disponível para reserva.";
        resultado.style.color = "green";
    } else if (horario === "9" || horario === "21" || horario === "22") {
        resultado.textContent = "Horário fora do horário de funcionamento.";
        resultado.style.color = "orange";
    } else {
        resultado.textContent = "Horário indisponível para reserva.";
        resultado.style.color = "red";
    }
}
 function verificarPromocao() {
    let dia = document.getElementById("dia").value;
    let resultadoPromocao = document.getElementById("resultadoPromocao");
    dia = dia.toLowerCase();

    switch (dia) {
        case "segunda":
            resultadoPromocao.textContent = "Promoção: 20% de desconto em todas as reservas!";
            resultadoPromocao.style.color = "green";
            break;
        case "terca":
            resultadoPromocao.textContent = "Promoção: 15% de desconto em todas as reservas!";
            resultadoPromocao.style.color = "blue";
            break;
        case "quarta":
            resultadoPromocao.textContent = "Promoção: 20% de desconto em todas as reservas!";
            resultadoPromocao.style.color = "green";
            break;
        case "quinta":
            resultadoPromocao.textContent = "Promoção: 10% de desconto em todas as reservas!";
            resultadoPromocao.style.color = "orange";
            break;
        case "sexta":
            resultadoPromocao.textContent = "Promoção: 10% de desconto em todas as reservas!";
            resultadoPromocao.style.color = "orange";
            break;
        case "sabado":
            resultadoPromocao.textContent = "Promoção: 15% de desconto em todas as reservas!";
            resultadoPromocao.style.color = "blue";
            break;
        case "domingo":
            resultadoPromocao.textContent = "Promoção: 25% de desconto em todas as reservas!";
            resultadoPromocao.style.color = "purple";
            break;
        default:
            resultadoPromocao.textContent = "Dia inválido.";
            resultadoPromocao.style.color = "red";
            break;
    }
}