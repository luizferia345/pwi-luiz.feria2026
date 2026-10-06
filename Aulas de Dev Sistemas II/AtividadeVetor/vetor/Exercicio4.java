import javax.swing.JOptionPane;

public class Exercicio4
{
    public static void main(String[] args)
    {
        double v[] = new double[4];
        double soma = 0;
        double media;
        String st;

        for (int i = 0; i < 4; i++)
        {
            st = JOptionPane.showInputDialog(null, "Digite a nota do " + (i + 1) + "º bimestre: ");
            v[i] = Double.parseDouble(st);
            soma = soma + v[i];
        }

        media = soma / 4;

        if (media >= 7)
        {
            st = "Aprovado";
        }
        else if (media >= 5)
        {
            st = "Recuperação";
        }
        else
        {
            st = "Reprovado";
        }

        JOptionPane.showMessageDialog(null, "Média: " + media + "\nSituação: " + st);
    }
}
