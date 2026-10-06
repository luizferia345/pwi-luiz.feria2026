import javax.swing.JOptionPane;

public class Exercicio5
{
    public static void main(String[] args)
    {
        int v[] = new int[10];
        int c[] = new int[10];
        int aux;
        String st;
        String saida = "";

        for (int i = 0; i < 10; i++)
        {
            st = JOptionPane.showInputDialog(null, "Digite o valor " + (i + 1) + ": ");
            v[i] = Integer.parseInt(st);
            c[i] = v[i];
        }

        for (int i = 0; i < 9; i++)
        {
            for (int j = 0; j < 9 - i; j++)
            {
                if (c[j] > c[j + 1])
                {
                    aux = c[j];
                    c[j] = c[j + 1];
                    c[j + 1] = aux;
                }
            }
        }

        for (int i = 0; i < 10; i++)
        {
            saida = saida + c[i] + " ";
        }

        JOptionPane.showMessageDialog(null, "Ordem crescente: " + saida);
    }
}
