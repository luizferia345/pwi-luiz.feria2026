import javax.swing.JOptionPane;

public class exemplo4 {
    public static void main(String[] args) {
        int[] v = {5, 8, 12, 18, 25};
        int n;
        int indice = -1;

        String st = JOptionPane.showInputDialog(null, "Digite um numero para buscar:");
        n = Integer.parseInt(st);

        for (int i = 0; i < v.length; i++) {
            if (v[i] == n) {
                indice = i;
                break;
            }
        }

        if (indice != -1) {
            st = JOptionPane.showInputDialog(null, "Valor encontrado na posicao " + indice + ". Digite o novo valor:");
            v[indice] = Integer.parseInt(st);
            JOptionPane.showMessageDialog(null, "Valor alterado com sucesso!\nNovo vetor: " + java.util.Arrays.toString(v));
        } else {
            JOptionPane.showMessageDialog(null, "Valor nao encontrado");
        }
    }
}