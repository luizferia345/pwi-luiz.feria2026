programa
{
	// Precisamos incluir a biblioteca de Texto para manipular as palavras
	inclua biblioteca Texto --> txt
	
	funcao inicio()
	{
		// 1. Mudamos para 'cadeia' porque 'caracter' só guarda uma letra
		// 2. O índice 'i' do laço deve ser sempre 'inteiro'
		cadeia vetor[4]
		inteiro i

		vetor[0] = "Luiz"
		vetor[1] = "Leonardo"
		vetor[2] = "Feira"
		vetor[3] = "Dias"

		escreva("Iniciais: ")

		para(i = 0; i < 4; i++)
		{
			// Usamos a função obter_caracter para pegar a letra na posição 0
			caracter inicial = txt.obter_caracter(vetor[i], 0)
			escreva(inicial, " ")
		}
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