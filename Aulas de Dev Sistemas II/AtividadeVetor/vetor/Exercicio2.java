import javax.swing.JOptionPane;

public class Exercicio2
{
    public static void main(String[] args)
    {
        double v[] = new double[5];
        double total = 0;
        String st;

        for (int i = 0; i < 5; i++)
        {
            st = JOptionPane.showInputDialog(null, "Digite o valor " + (i + 1) + ": ");
            v[i] = Double.parseDouble(st);
            total = total + v[i];
        }

        JOptionPane.showMessageDialog(null, "Valor total: " + total);
    }
}
