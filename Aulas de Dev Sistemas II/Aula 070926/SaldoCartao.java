import javax.swing.JOptionPane;

public class SaldoCartao {
    public static void main(String[] args) {
        String input = JOptionPane.showInputDialog("Digite o saldo do cartão:");
        
        if (input != null && !input.isEmpty()) {
            double saldo = Double.parseDouble(input.replace(",", "."));
            String status;
            
            if (saldo > 0) {
                status = "Positivo";
            } else if (saldo < 0) {
                status = "Negativo";
            } else {
                status = "Zerado";
            }
            
            JOptionPane.showMessageDialog(null, "O saldo do cartão é " + status);
        }
    }
}
