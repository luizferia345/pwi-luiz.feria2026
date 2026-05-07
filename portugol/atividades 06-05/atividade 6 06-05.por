// 6) Vetor A e B multiplicando e guardando no vetor C

programa
{
	funcao inicio()
	{
		inteiro A[5]
		inteiro B[5]
		inteiro C[5]

		escreva("Digite os valores do vetor A:\n")

		para(inteiro i = 0; i < 5; i++)
		{
			leia(A[i])
		}

		escreva("Digite os valores do vetor B:\n")

		para(inteiro i = 0; i < 5; i++)
		{
			leia(B[i])
		}

		para(inteiro i = 0; i < 5; i++)
		{
			C[i] = A[i] * B[i]
		}

		escreva("\nVetor C:\n")

		para(inteiro i = 0; i < 5; i++)
		{
			escreva(C[i], " ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 499; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */