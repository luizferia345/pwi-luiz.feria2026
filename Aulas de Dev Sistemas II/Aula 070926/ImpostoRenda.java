import javax.swing.JOptionPane;

public class ImpostoRenda {
    public static void main(String[] args) {
        String input = JOptionPane.showInputDialog("Digite o valor do salário (R$):");
        
        if (input != null && !input.isEmpty()) {
            double salario = Double.parseDouble(input.replace(",", "."));
            double aliquota = 0;
            double deducao = 0;

            if (salario < 2428.81) {
                JOptionPane.showMessageDialog(null, "Isento de Imposto de Renda.");
                return;
            } else if (salario <= 2826.65) {
                aliquota = 7.5;
                deducao = 182.16;
            } else if (salario <= 3751.05) {
                aliquota = 15.0;
                deducao = 394.16;
            } else if (salario <= 4664.68) {
                aliquota = 22.5;
                deducao = 675.49;
            } else {
                aliquota = 27.5;
                deducao = 908.73;
            }

            double valorImposto = (salario * (aliquota / 100)) - deducao;
            String mensagem = String.format("Alíquota: %.1f%%\nValor do Imposto a pagar: R$ %.2f", aliquota, valorImposto);
            JOptionPane.showMessageDialog(null, mensagem);
        }
    }
}
