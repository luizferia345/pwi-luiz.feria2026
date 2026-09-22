package ativiades210926;

import javax.swing.JOptionPane;

public class atividade3 {
    public static void main(String[] args) {
        char sexo;
        int idade;
        char estadoCivil;
        char continuar;
        int total = 0;

        do {
            sexo = JOptionPane.showInputDialog("Digite o sexo da pessoa (F/M): ").charAt(0);
            idade = Integer.parseInt(JOptionPane.showInputDialog("Digite a idade: "));
            estadoCivil = JOptionPane.showInputDialog("Digite o estado civil (S para solteiro/a, C para casado/a): ").charAt(0);

            if (sexo == 'F' || sexo == 'f') {
                if (idade < 21) {
                    if (estadoCivil == 'S' || estadoCivil == 's') {
                        total++;
                    }
                }
            }

            continuar = JOptionPane.showInputDialog("Deseja continuar? (S/N): ").charAt(0);

        } while (continuar == 'S' || continuar == 's');

        JOptionPane.showMessageDialog(null, "Quantidade de pessoas que atendem aos critérios: " + total);
    }
}
