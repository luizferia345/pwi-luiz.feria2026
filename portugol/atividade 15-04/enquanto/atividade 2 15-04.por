programa
{
    funcao inicio()
    {
        inteiro idade, i=1
        inteiro maior=0, menor=999, soma=0

        enquanto(i <= 20)
        {
            escreva("Digite a idade: ")
            leia(idade)

            se(idade > maior) maior = idade
            se(idade < menor) menor = idade

            soma += idade
            i++
        }

        escreva("\nMaior: ", maior)
        escreva("\nMenor: ", menor)
        escreva("\nMédia: ", soma/20)
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 468; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */