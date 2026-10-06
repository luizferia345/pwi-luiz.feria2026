import javax.swing.JOptionPane;

public class exemploMatriz {
    public static void main(String[] args) {
        int[][] matriz = new int[3][3];
        int soma = 0;

        for (int linha = 0; linha < matriz.length; linha++) {
            for (int coluna = 0; coluna < matriz[linha].length; coluna++) {
                String entrada = JOptionPane.showInputDialog(
                        null,
                        "Digite o valor da posicao [" + linha + "][" + coluna + "]:"
                );
                matriz[linha][coluna] = Integer.parseInt(entrada);
                soma += matriz[linha][coluna];
            }
        }

        StringBuilder resultado = new StringBuilder("Matriz:\n");
        for (int linha = 0; linha < matriz.length; linha++) {
            for (int coluna = 0; coluna < matriz[linha].length; coluna++) {
                resultado.append(matriz[linha][coluna]).append("\t");
            }
            resultado.append("\n");
        }
        resultado.append("\nSoma dos valores: ").append(soma);

        JOptionPane.showMessageDialog(null, resultado.toString());
    }
}
