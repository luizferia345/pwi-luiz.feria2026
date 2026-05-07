programa
{
	funcao inicio()
	{
		
		inteiro idade
		caracter sexo
		real altura, peso

		
		escreva("Digite a idade: ")
		leia(idade)

		escreva("Digite o sexo (M/F): ")
		leia(sexo)

		escreva("Digite a altura (ex: 1.85): ")
		leia(altura)

		escreva("Digite o peso (kg): ")
		leia(peso)

		se (sexo == 'M' ou sexo == 'm' e altura >= 1.80 e peso >= 75) 
		{
			escreva("\nAceito")
		}
		senao 
		{
			escreva("\nNão atende aos requisitos.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 289; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */