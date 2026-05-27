// Função de Login Básica
function login() {
  const usuarioInput = document.querySelector('.form-stack input[type="text"]');
  const senhaInput = document.querySelector('.form-stack input[type="password"]');
  
  if (!usuarioInput || !senhaInput) return;
  
  const usuario = usuarioInput.value;
  const senha = senhaInput.value;

  // Validação básica
  if (usuario === '' || senha === '') {
    alert('Por favor, preencha todos os campos!');
    return;
  }

  // Validação simples (exemplo básico)
  if (usuario === 'admin' && senha === '123456') {
    alert('Login realizado com sucesso!');
    // Redirecionar para página de dashboard ou home
    window.location.href = 'index.html';
  } else {
    alert('Usuário ou senha incorretos!');
  }
}

// Função para Inscrição em Vagas
function inscreverVaga() {
  const nomeInput = document.querySelector('input[placeholder="Nome"]');
  const emailInput = document.querySelector('input[placeholder="Email"]');
  const telefoneInput = document.querySelector('input[placeholder="Telefone"]');
  const mensagemInput = document.querySelector('textarea[placeholder="Mensagem / Vaga de interesse"]');

  if (!nomeInput || !emailInput || !telefoneInput || !mensagemInput) return;

  const nome = nomeInput.value;
  const email = emailInput.value;
  const telefone = telefoneInput.value;
  const mensagem = mensagemInput.value;

  // Validação básica
  if (nome === '' || email === '' || telefone === '' || mensagem === '') {
    alert('Por favor, preencha todos os campos!');
    return;
  }

  // Confirmação de candidatura
  alert(`Obrigado, ${nome}!\n\nSua candidatura foi recebida com sucesso!\nEntraremos em contato em breve.`);
  
  // Limpar o formulário
  nomeInput.value = '';
  emailInput.value = '';
  telefoneInput.value = '';
  mensagemInput.value = '';
}


