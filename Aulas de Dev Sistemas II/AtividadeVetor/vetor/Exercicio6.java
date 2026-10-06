import javax.swing.JOptionPane;

public class Exercicio6
{
    public static void main(String[] args)
    {
        double a[] = new double[5];
        double b[] = new double[5];
        double c[] = new double[5];
        String st;
        String saida = "";

        for (int i = 0; i < 5; i++)
        {
            st = JOptionPane.showInputDialog(null, "Vetor A - digite o número " + (i + 1) + ": ");
            a[i] = Double.parseDouble(st);
        }

        for (int i = 0; i < 5; i++)
        {
            st = JOptionPane.showInputDialog(null, "Vetor B - digite o número " + (i + 1) + ": ");
            b[i] = Double.parseDouble(st);
        }

        for (int i = 0; i < 5; i++)
        {
            c[i] = a[i] * b[i];
            saida = saida + c[i] + " ";
        }

        JOptionPane.showMessageDialog(null, "Vetor C (A x B): " + saida);
    }
}
