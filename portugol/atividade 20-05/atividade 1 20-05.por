programa
{
	funcao inicio()
	{
		inteiro mat[3][4]
		inteiro modificada[3][4]

		// Leitura da matriz
		escreva("Digite os valores da matriz 3x4:\n")

		para(inteiro i = 0; i < 3; i++)
		{
			para(inteiro j = 0; j < 4; j++)
			{
				escreva("mat[", i, "][", j, "] = ")
				leia(mat[i][j])

				// Verifica se o número é negativo
				se(mat[i][j] < 0)
				{
					modificada[i][j] = 0
				}
				senao
				{
					modificada[i][j] = mat[i][j]
				}
			}
		}

		// Mostrar matriz original
		escreva("\nMATRIZ ORIGINAL:\n")

		para(inteiro i = 0; i < 3; i++)
		{
			para(inteiro j = 0; j < 4; j++)
			{
				escreva(mat[i][j], "\t")
			}

			escreva("\n")
		}

		// Mostrar matriz modificada
		escreva("\nMATRIZ MODIFICADA:\n")

		para(inteiro i = 0; i < 3; i++)
		{
			para(inteiro j = 0; j < 4; j++)
			{
				escreva(modificada[i][j], "\t")
			}

			escreva("\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 867; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */