programa
{
	
	funcao inicio()
	{
	real salario, imposto, aliquota, parcela

	escreva ("digite seu salario")
		leia (salario)
	se (salario <= 2.428.81){
		escreva ("isento de imposto de renda")
	}senao se (salario <= 2826.65){
			aliquota = 7.5
			parcela = 182.16
		}senao se (salario <= 3751.05){
			aliquota = 15
			parcela = 394.15
		}senao se (salario <=4664.68){
			aliquota = 22.5
			parcela = 675.49
		}senao{
			aliquota =27.5
			parcela = 908.73
		}
		se (salario > 2428.80){
			imposto = (salario * (aliquota / 100)) - parcela
			escreva("aliquota: ", aliquota, "% \n")
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 579; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */