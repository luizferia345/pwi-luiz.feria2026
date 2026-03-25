programa
{
	
	funcao inicio()
	{
	caracter avaliacao

	escreva ("digite a avaliacao (A, B, C, D ou E):")
	leia (avaliacao)
	se (avaliacao == 'A' ou avaliacao == 'B' ou avaliacao == 'C'){
		escreva ("Promovido")
	}

	senao se (avaliacao == 'D' ou avaliacao == 'E'){
		escreva ("Retido")
		
	}
	senao {
		escreva ("avaliacao invalida")	
	    }
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 213; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */