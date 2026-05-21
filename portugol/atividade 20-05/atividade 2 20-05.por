programa
{
	funcao inicio()
	{
		cadeia mercado[4][3]

		// Cabeçalho
		mercado[0][0] = "Item"
		mercado[0][1] = "Descricao"
		mercado[0][2] = "Valor"

		// Produto 1
		mercado[1][0] = "1"
		mercado[1][1] = "Arroz"
		mercado[1][2] = "25,00"

		// Produto 2
		mercado[2][0] = "2"
		mercado[2][1] = "Feijao"
		mercado[2][2] = "12,50"

		// Produto 3
		mercado[3][0] = "3"
		mercado[3][1] = "Macarrao"
		mercado[3][2] = "8,99"

		// Impressão da matriz
		escreva("TABELA DE PRODUTOS\n\n")

		para(inteiro i = 0; i < 4; i++)
		{
			para(inteiro j = 0; j < 3; j++)
			{
				escreva(mercado[i][j], "\t")
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
 * @POSICAO-CURSOR = 629; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */