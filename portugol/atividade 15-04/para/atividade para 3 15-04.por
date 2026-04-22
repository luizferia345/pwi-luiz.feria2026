programa
{
    funcao inicio()
    {
        caracter sexo, estado, continuar='S'
        inteiro idade, contador=0

       para(inteiro i = 0; continuar == 'S'; i++)
        {
            escreva("Sexo (F/M): ")
            leia(sexo)

            escreva("Idade: ")
            leia(idade)

            escreva("Estado civil (S/C): ")
            leia(estado)

            se(sexo == 'F' e idade < 21 e estado == 'S')
            {
                contador++
            }

            escreva("Continuar? (S/N): ")
            leia(continuar)
        }

        escreva("Total: ", contador)
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 166; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */