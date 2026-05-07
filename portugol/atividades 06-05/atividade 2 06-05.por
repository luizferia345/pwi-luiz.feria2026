// 2) Vetor com 5 valores e soma total

programa
{
	funcao inicio()
	{
		inteiro vetor[5]
		inteiro soma = 0

		para(inteiro i = 0; i < 5; i++)
		{
			escreva("Digite um valor: ")
			leia(vetor[i])

			soma = soma + vetor[i]
		}

		escreva("Total = ", soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 262; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */