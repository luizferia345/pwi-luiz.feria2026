import javax.swing.JOptionPane;

public class CanalTV {
    public static void main(String[] args) {
        String input = JOptionPane.showInputDialog("Digite o número do canal (2, 4, 5, 7, 9, 11, 13):");

        if (input == null) {
            JOptionPane.showMessageDialog(null, "Operação cancelada.");
            return;
        }

        try {
            int canal = Integer.parseInt(input.trim());
            String nomeCanal;

            switch (canal) {
                case 2: nomeCanal = "Cultura"; break;
                case 4: nomeCanal = "SBT"; break;
                case 5: nomeCanal = "Globo"; break;
                case 7: nomeCanal = "Record"; break;
                case 9: nomeCanal = "Manchete"; break;
                case 11: nomeCanal = "Gazeta"; break;
                case 13: nomeCanal = "Bandeirantes"; break;
                default: nomeCanal = "Canal não encontrado"; break;
            }

            JOptionPane.showMessageDialog(null, "Canal selecionado: " + nomeCanal);
        } catch (NumberFormatException e) {
            JOptionPane.showMessageDialog(null, "Valor inválido! Digite apenas números.");
        }
    }
}
