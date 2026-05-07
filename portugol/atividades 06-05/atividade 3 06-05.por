// 3) Vetor com 10 valores e mostrar os pares

programa
{
	funcao inicio()
	{
		inteiro vetor[10]

		para(inteiro i = 0; i < 10; i++)
		{
			escreva("Digite um valor: ")
			leia(vetor[i])
		}

		escreva("\nValores pares:\n")

		para(inteiro i = 0; i < 10; i++)
		{
			se(vetor[i] % 2 == 0)
			{
				escreva(vetor[i], "\n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 336; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */