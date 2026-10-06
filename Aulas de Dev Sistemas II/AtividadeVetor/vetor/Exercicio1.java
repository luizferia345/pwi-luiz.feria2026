import javax.swing.JOptionPane;

public class Exercicio1
{
    public static void main(String[] args)
    {
        String st = JOptionPane.showInputDialog(null, "Digite seu nome completo: ");
        String v[] = st.split(" ");
        String ini = "";

        for (int i = 0; i < v.length; i++)
        {
            ini = ini + v[i].charAt(0) + " ";
        }

        JOptionPane.showMessageDialog(null, "Iniciais: " + ini);
    }
}
