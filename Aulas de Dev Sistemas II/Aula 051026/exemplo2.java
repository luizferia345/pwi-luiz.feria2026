import javax.swing.JOptionPane;

public class exemplo2 {
    public static void main(String[] args) {
        int[] v = new int[2];
        int n;
        String msg = "Digite um numero para alterar:";
        String st = JOptionPane.showInputDialog(null, msg);
        n = Integer.parseInt(st);

        for (int i = 0; i < 2; i++) {
            if (v[i] == n) {
                st = "Digite um novo numero:";
                st = JOptionPane.showInputDialog(null, st);
                v[i] = Integer.parseInt(st);
                break;
            } else {
                st = "valor nao encontrado";
                JOptionPane.showMessageDialog(null, st);
                System.exit(0);
            }
        }
    }
}
