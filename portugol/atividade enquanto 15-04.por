programa
{
   funcao inicio()
   {
      inteiro voto, c1, c2, c3, c4, brancos, nulos
      c1 = 0
      c2 = 0
      c3 = 0
      c4 = 0
      brancos = 0
      nulos = 0

      escreva("Digite o voto (0 para encerrar): ")
      leia(voto)

      enquanto (voto != 0)
      {
         se (voto == 1)
         {
            c1 = c1 + 1
         }
         senao se (voto == 2)
         {
            c2 = c2 + 1
         }
         senao se (voto == 3)
         {
            c3 = c3 + 1
         }
         senao se (voto == 4)
         {
            c4 = c4 + 1
         }
         senao se (voto == 5)
         {
            brancos = brancos + 1
         }
         senao
         {
            nulos = nulos + 1
         }

         escreva("Digite o voto (0 para encerrar): ")
         leia(voto)
      }

      escreva("Votos Candidato 1: ", c1)
      escreva("Votos Candidato 2: ", c2)
      escreva("Votos Candidato 3: ", c3)
      escreva("Votos Candidato 4: ", c4)
      escreva("Votos Brancos: ", brancos)
      escreva
      ("Votos Nulos: ", nulos)
   }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1038; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */