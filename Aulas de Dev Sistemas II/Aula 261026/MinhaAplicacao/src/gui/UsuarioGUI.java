package gui;

import modelo.Usuario;
import dao.UsuarioDAO;
import javax.swing.JOptionPane;
import javax.swing.*;
import java.awt.event.*;

public class UsuarioGUI extends JFrame {
    private JTextField jTextField1, jTextField2, jTextField3, jTextField4;
    private JButton jButton1, jButton2, jButton3;

    public UsuarioGUI() {
        setTitle("Cadastro de Usuário");
        setSize(400, 300);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLayout(null);

        JLabel lblNome = new JLabel("Nome:"); lblNome.setBounds(20, 20, 100, 20); add(lblNome);
        jTextField1 = new JTextField(); jTextField1.setBounds(120, 20, 200, 20); add(jTextField1);

        JLabel lblCpf = new JLabel("CPF:"); lblCpf.setBounds(20, 50, 100, 20); add(lblCpf);
        jTextField2 = new JTextField(); jTextField2.setBounds(120, 50, 200, 20); add(jTextField2);

        JLabel lblEmail = new JLabel("Email:"); lblEmail.setBounds(20, 80, 100, 20); add(lblEmail);
        jTextField3 = new JTextField(); jTextField3.setBounds(120, 80, 200, 20); add(jTextField3);

        JLabel lblTel = new JLabel("Telefone:"); lblTel.setBounds(20, 110, 100, 20); add(lblTel);
        jTextField4 = new JTextField(); jTextField4.setBounds(120, 110, 200, 20); add(jTextField4);

        jButton1 = new JButton("Cadastrar"); jButton1.setBounds(50, 160, 100, 30); add(jButton1);
        jButton2 = new JButton("Limpar"); jButton2.setBounds(160, 160, 100, 30); add(jButton2);
        jButton3 = new JButton("SAIR"); jButton3.setBounds(270, 160, 100, 30); add(jButton3);

        // Evento CADASTRAR
        jButton1.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                Usuario usuarios = new Usuario();
                usuarios.setNome(jTextField1.getText());
                usuarios.setCpf(jTextField2.getText());
                usuarios.setEmail(jTextField3.getText());
                usuarios.setTelefone(jTextField4.getText());

                if ((jTextField1.getText().isEmpty()) || (jTextField2.getText().isEmpty()) ||
                    (jTextField3.getText().isEmpty()) || (jTextField4.getText().isEmpty())) {
                    JOptionPane.showMessageDialog(null, "Os campos não podem retornar vazios");
                }
                else {
                    UsuarioDAO dao = new UsuarioDAO();
                    dao.adiciona(usuarios);
                    JOptionPane.showMessageDialog(null, "Usuário " + jTextField1.getText() + " inserido com sucesso! ");
                }
            }
        });

        // Evento LIMPAR
        jButton2.addActionListener((ActionEvent evt) -> {
            jTextField1.setText("");
            jTextField2.setText("");
            jTextField3.setText("");
            jTextField4.setText("");
        });

        // Evento SAIR
        jButton3.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                System.exit(0);
            }
        });
    }

    public static void main(String[] args) {
        new UsuarioGUI().setVisible(true);
    }
}
