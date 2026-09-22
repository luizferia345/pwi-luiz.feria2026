import javax.swing.JOptionPane;

public class MencaoAluno {
    public static void main(String[] args) {
        String input = JOptionPane.showInputDialog("Digite a menção do aluno (MB, B, R, I):");
        
        if (input != null) {
            String mencao = input.trim().toUpperCase();
            String resultado;
            
            switch (mencao) {
                case "MB": resultado = "Muito bom"; break;
                case "B": resultado = "Bom"; break;
                case "R": resultado = "Regular"; break;
                case "I": resultado = "Irregular"; break;
                default: resultado = "Menção inválida"; break;
            }
            
            JOptionPane.showMessageDialog(null, "Desempenho: " + resultado);
        }
    }
}
