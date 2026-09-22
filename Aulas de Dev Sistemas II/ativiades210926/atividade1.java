package ativiades210926;

import javax.swing.JOptionPane;

public class atividade1 {
    public static void main(String[] args) {
        int voto;
        int candidato1 = 0;
        int candidato2 = 0;
        int candidato3 = 0;
        int candidato4 = 0;
        int branco = 0;
        int nulo = 0;
        int totalVotos = 0;
        char continuar;

        do {
            String menu = "===== URNA ELETRONICA =====\n"
                    + "1 - Candidato 1\n"
                    + "2 - Candidato 2\n"
                    + "3 - Candidato 3\n"
                    + "4 - Candidato 4\n"
                    + "5 - Voto em branco\n"
                    + "Digite o numero do seu voto:";

            voto = Integer.parseInt(JOptionPane.showInputDialog(menu));

            switch (voto) {
                case 1:
                    candidato1++;
                    break;
                case 2:
                    candidato2++;
                    break;
                case 3:
                    candidato3++;
                    break;
                case 4:
                    candidato4++;
                    break;
                case 5:
                    branco++;
                    break;
                default:
                    nulo++;
                    break;
            }

            totalVotos++;

            continuar = JOptionPane.showInputDialog("Deseja registrar outro voto? (s/n):").charAt(0);

        } while (continuar == 's' || continuar == 'S');

        String resultado = "===== RESULTADO FINAL =====\n"
                + "Candidato 1: " + candidato1 + " votos\n"
                + "Candidato 2: " + candidato2 + " votos\n"
                + "Candidato 3: " + candidato3 + " votos\n"
                + "Candidato 4: " + candidato4 + " votos\n"
                + "Votos em branco: " + branco + "\n"
                + "Votos nulos: " + nulo + "\n"
                + "Total de votos: " + totalVotos + "\n";

        int vencedor = 0;
        int maiorVoto = candidato1;

        if (candidato2 > maiorVoto) {
            maiorVoto = candidato2;
            vencedor = 2;
        }
        if (candidato3 > maiorVoto) {
            maiorVoto = candidato3;
            vencedor = 3;
        }
        if (candidato4 > maiorVoto) {
            maiorVoto = candidato4;
            vencedor = 4;
        }

        resultado += "Candidato vencedor: " + vencedor + " com " + maiorVoto + " votos.";

        JOptionPane.showMessageDialog(null, resultado);
    }
}
