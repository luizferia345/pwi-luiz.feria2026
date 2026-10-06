import javax.swing.JOptionPane;

public class CalculadoraIMC {
    public static void main(String[] args) {
        String inputPeso = JOptionPane.showInputDialog("Digite o peso em kg:");
        String inputAltura = JOptionPane.showInputDialog("Digite a altura em metros:");
        
        if (inputPeso != null && inputAltura != null) {
            double peso = Double.parseDouble(inputPeso.replace(",", "."));
            double altura = Double.parseDouble(inputAltura.replace(",", "."));
            
            double imc = peso / Math.pow(altura, 2);
            String classificacao;
            
            if (imc < 18.5) {
                classificacao = "Abaixo do peso";
            } else if (imc <= 24.9) {
                classificacao = "Eutrófico (Peso normal)";
            } else if (imc <= 29.9) {
                classificacao = "Sobrepeso";
            } else if (imc <= 34.9) {
                classificacao = "Obesidade Grau I";
            } else if (imc <= 39.9) {
                classificacao = "Obesidade Grau II";
            } else {
                classificacao = "Obesidade Grau III (ou Mórbida)";
            }
            
            String mensagem = String.format("IMC: %.2f\nClassificação: %s", imc, classificacao);
            JOptionPane.showMessageDialog(null, mensagem);
        }
    }
}
