programa
{
    funcao inicio()
    {
        cadeia razao_social, fantasia, cpf_cnpj
        cadeia inscricao_estadual, suframa
        cadeia endereco, cidade, estado, cep
        cadeia telefone, email

        escreva("===== CADASTRO DE CLIENTE =====\n\n")

        escreva("Razao Social: ")
        leia(razao_social)

        escreva("Nome Fantasia: ")
        leia(fantasia)

        escreva("CPF/CNPJ: ")
        leia(cpf_cnpj)

        escreva("Inscricao Estadual: ")
        leia(inscricao_estadual)

        escreva("Suframa: ")
        leia(suframa)

        escreva("\n===== ENDERECO =====\n")

        escreva("Endereco: ")
        leia(endereco)

        escreva("Cidade: ")
        leia(cidade)

        escreva("Estado: ")
        leia(estado)

        escreva("CEP: ")
        leia(cep)

        escreva("\n===== CONTATO =====\n")

        escreva("Telefone: ")
        leia(telefone)

        escreva("Email: ")
        leia(email)

        escreva("\n===== DADOS CADASTRADOS =====\n\n")

        escreva("Razao Social: ", razao_social, "\n")
        escreva("Fantasia: ", fantasia, "\n")
        escreva("CPF/CNPJ: ", cpf_cnpj, "\n")
        escreva("Inscricao Estadual: ", inscricao_estadual, "\n")
        escreva("Suframa: ", suframa, "\n")

        escreva("\nEndereco: ", endereco, "\n")
        escreva("Cidade: ", cidade, " - ", estado, "\n")
        escreva("CEP: ", cep, "\n")

        escreva("\nTelefone: ", telefone, "\n")
        escreva("Email: ", email, "\n")
    }
}