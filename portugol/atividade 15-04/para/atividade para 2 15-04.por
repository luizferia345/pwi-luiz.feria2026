programa
{
    funcao inicio()
    {
        inteiro idade
        inteiro maior=0, menor=999, soma=0

        para(inteiro i=1; i<=20; i++)
        {
            escreva("Digite a idade: ")
            leia(idade)

            se(idade > maior) maior = idade
            se(idade < menor) menor = idade

            soma += idade
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
 * @POSICAO-CURSOR = 459; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */