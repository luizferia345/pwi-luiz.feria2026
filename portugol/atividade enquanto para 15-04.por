programa
{
   funcao inicio()
   {
      caracter sexo, estado, continuar
      inteiro idade, cont
      cont = 0

      faca
      {
         escreva("Sexo (F/M): ")
         leia(sexo)
         escreva("Idade: ")
         leia(idade)
         escreva("Estado civil (S/C/D): ")
         leia(estado)

         se ((sexo == 'F') e (idade < 21) e (estado == 'S'))
         {
            cont = cont + 1
         }

         escreva("Continuar? (S/N): ")
         leia(continuar)
      }
      enquanto (continuar == 'S')

      escreva("Total que satisfaz os requisitos: ", cont)
   }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 535; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */