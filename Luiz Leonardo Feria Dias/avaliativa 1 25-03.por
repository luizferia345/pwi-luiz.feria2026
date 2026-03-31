programa
{
    funcao inicio()
    {
        real salario, imposto
        
        escreva("Digite o salário: ")
        leia(salario)

        se (salario <= 2428.81)
        {
            escreva("Isento de imposto de renda.\n")
        }
        senao se (salario <= 2826.65)
        {
            imposto = (salario * 7.5 / 100) - 182.16
            escreva("Alíquota: 7.5%\n")
            escreva("Imposto a pagar: R$ ", imposto, "\n")
        }
        senao se (salario <= 3751.05)
        {
            imposto = (salario * 15 / 100) - 394.16
            escreva("Alíquota: 15%\n")
            escreva("Imposto a pagar: R$ ", imposto, "\n")
        }
        senao se (salario <= 4664.68)
        {
            imposto = (salario * 22.5 / 100) - 675.49
            escreva("Alíquota: 22.5%\n")
            escreva("Imposto a pagar: R$ ", imposto, "\n")
                    }
        senao
        {
            imposto = (salario * 27.5 / 100) - 908.73
            escreva("Alíquota: 27.5%\n")
            escreva("Imposto a pagar: R$ ", imposto, "\n")
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1079; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */