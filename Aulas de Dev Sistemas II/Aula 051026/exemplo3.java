import javax.swing.JOptionPane;

public class exemplo3 {
    public static void main(String[] args) {
        int[] v = {10, 20, 30, 40, 50};
        int n;
        boolean encontrado = false;

        String st = JOptionPane.showInputDialog(null, "Digite um numero para buscar:");
        n = Integer.parseInt(st);

        for (int i = 0; i < v.length; i++) {
            if (v[i] == n) {
                encontrado = true;
                JOptionPane.showMessageDialog(null, "Valor encontrado na posicao " + i + ": " + v[i]);
                break;
            }
        }

        if (!encontrado) {
            JOptionPane.showMessageDialog(null, "Valor nao encontrado");
        }
    }
}