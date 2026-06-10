const usuarioValido = 'admin';
const senhaValida = '1234';

function validarLogin() {
    const usuario = document.getElementById('username').value.trim();
    const senha = document.getElementById('password').value;
    const mensagem = document.getElementById('login-mensagem');

    if (usuario === usuarioValido && senha === senhaValida) {
        mensagem.textContent = 'Bem-vindo!';
        mensagem.style.color = 'green';
        return;
    }

    mensagem.textContent = 'Usuário ou senha incorretos.';
    mensagem.style.color = 'red';
}

function mostrarPrato() {
    const resultado = document.getElementById('resultado');
    const pratos = ['lazanha', 'macarrão', 'pizza', 'sopa', 'salada'];
    resultado.innerHTML = pratos.map(prato => `<p>${prato}</p>`).join('');
}
