package ativiades210926;

import javax.swing.JOptionPane;

public class atividade2 {
    public static void main(String[] args) {
        int totalAlunos = 20;
        int somaIdades = 0;
        int idade;

        for (int i = 1; i <= totalAlunos; i++) {
            idade = Integer.parseInt(JOptionPane.showInputDialog("Digite a idade do aluno " + i + ": "));
            somaIdades += idade;
        }

        double media = somaIdades / (double) totalAlunos;

        JOptionPane.showMessageDialog(null, "A média das idades dos 20 alunos é: " + media);
    }
}
