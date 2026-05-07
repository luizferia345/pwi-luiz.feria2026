// 4) Vetor com notas dos 4 bimestres

programa
{
	funcao inicio()
	{
		real notas[4]
		real media = 0

		para(inteiro i = 0; i < 4; i++)
		{
			escreva("Digite a nota do ", i+1, "º bimestre: ")
			leia(notas[i])

			media = media + notas[i]
		}

		media = media / 4

		escreva("Média = ", media, "\n")

		se(media >= 7)
		{
			escreva("Aprovado")
		}
		senao se(media >= 5 e media < 7)
		{
			escreva("Recuperação")
		}
		senao
		{
			escreva("Reprovado")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 465; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */