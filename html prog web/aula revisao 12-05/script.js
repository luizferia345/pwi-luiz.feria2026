document.getElementById('formReserva').addEventListener('submit', function(e) {
    e.preventDefault(); // Impede o envio do formulário para evitar recarregamento da página

    // Coleta os dados do formulário
    const nome = this.nome.value; // Obtém o valor do campo "nome"
    const whatsapp = this.whatsapp.value; // Obtém o valor do campo "whatsapp"
    const email = this.email.value; // Obtém o valor do campo "email"
    const data = this.data.value; // Obtém o valor do campo "data"
    const hora = this.hora.value; // Obtém o valor do campo "hora"
    const observacoes = document.getElementById('mensagem').value; // Obtém o valor do campo "observações"

    // Exibe os dados coletados no console (pode ser substituído por uma ação de envio real)
    console.log('Reserva agendada:');
    console.log('Nome:', nome);
    console.log('WhatsApp:', whatsapp);
    console.log('Email:', email);
    console.log('Data:', data);
    console.log('Hora:', hora);
    console.log('Observações:', observacoes);

    // Exibe uma mensagem de confirmação para o usuário
    document.getElementById('resultado').textContent = 'Reserva agendada com sucesso! Obrigado, ' + nome + '.';

    // Monta o corpo do email com os dados da reserva
    const corpoEmail = `Nome: ${nome}
    WhatsApp: ${whatsapp}
    Email: ${email}
    Data: ${data}
    Hora: ${hora}
    Observações: ${observacoes}`;

    // Abre o cliente de email com os dados da reserva
    window.location.href = `mailto:luizferia345@gmail.com?subject=${encodeURIComponent('Nova Reserva')}&body=${encodeURIComponent(corpoEmail)}`;

    // Limpa o formulário após a submissão
    this.reset();
});
