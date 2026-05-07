// 5) Vetor com 10 valores em ordem crescente

programa
{
	funcao inicio()
	{
		inteiro vetor[10]
		inteiro aux

		para(inteiro i = 0; i < 10; i++)
		{
			escreva("Digite um valor: ")
			leia(vetor[i])
		}

		para(inteiro i = 0; i < 10; i++)
		{
			para(inteiro j = i + 1; j < 10; j++)
			{
				se(vetor[i] > vetor[j])
				{
					aux = vetor[i]
					vetor[i] = vetor[j]
					vetor[j] = aux
				}
			}
		}

		escreva("\nVetor em ordem crescente:\n")

		para(inteiro i = 0; i < 10; i++)
		{
			escreva(vetor[i], " ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 523; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */