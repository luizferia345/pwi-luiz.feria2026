programa
{
   funcao inicio()
   {
      inteiro i, idade, menor, maior, soma
      real media

      escreva("Digite a idade do aluno 1: ")
      leia(idade)
      menor = idade
      maior = idade
      soma = idade

      para (i = 2; i <= 20; i++)
      {
         escreva("Digite a idade do aluno ", i, ": ")
         leia(idade)

         se (idade < menor)
         {
            menor = idade
         }
         se (idade > maior)
         {
            maior = idade
         }
         soma = soma + idade
      }

      media = soma / 20.0
      escreva("Menor idade: ", menor)
      escreva("Maior idade: ", maior)
      escreva("Media das idades: ", media)
   }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 670; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */