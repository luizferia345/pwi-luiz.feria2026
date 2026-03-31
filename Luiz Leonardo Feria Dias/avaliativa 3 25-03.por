programa
{
    funcao inicio()
    {
        real peso, altura, imc
        escreva("Digite o peso (kg): ")
        leia(peso)
        escreva("Digite a altura (m): ")
        leia(altura)

        imc = peso / (altura * altura)

        se (imc < 18.5)
        {
            escreva("Classificação: Abaixo do peso\n")
        }
        senao se (imc >= 18.5 e imc <= 24.9)
        {
            escreva("Classificação: Eutrófico (Peso normal)\n")
        }
        senao se (imc >= 25 e imc <= 29.9)
        {
            escreva("Classificação: Sobrepeso\n")
        }
        senao se (imc >= 30 e imc <= 34.9)
        {
            escreva("Classificação: Obesidade Grau I\n")
        }
        senao se (imc >= 35 e imc <= 39.9)
        {
            escreva("Classificação: Obesidade Grau II\n")
        }
        senao
        {
            escreva("Classificação: Obesidade Grau III (Mórbida)\n")
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 922; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */