programa
{
    funcao inicio()
    {
        inteiro voto
        inteiro c1=0, c2=0, c3=0, c4=0, branco=0, nulo=0

        faca
        {
            escreva("Digite o voto (0 para encerrar): ")
            leia(voto)

            se(voto != 0)
            {
                se(voto == 1) c1++
                senao se(voto == 2) c2++
                senao se(voto == 3) c3++
                senao se(voto == 4) c4++
                senao se(voto == 5) branco++
                senao nulo++
            }

        } enquanto(voto != 0)

        escreva("\nC1: ", c1, "\nC2: ", c2, "\nC3: ", c3, "\nC4: ", c4)
        escreva("\nBrancos: ", branco, "\nNulos: ", nulo)
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 8; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */