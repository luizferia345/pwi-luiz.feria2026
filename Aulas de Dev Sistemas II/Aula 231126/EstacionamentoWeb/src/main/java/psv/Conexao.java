package psv;

import java.sql.*;

public class Conexao {

    // Ajuste aqui se o seu MySQL/XAMPP tiver outra porta, usuario ou senha.
    private static final String HOST = "127.0.0.1";
    private static final String PORTA = "3306";
    private static final String BANCO = "estacionamento";
    private static final String USUARIO = "root";
    private static final String SENHA = "";

    // Tenta o driver do MySQL (se voce colocar o conector oficial em lib/)
    // e cai para o MariaDB (ja incluido em lib/), que tambem fala com MySQL.
    private static final String[][] DRIVERS = {
        {"com.mysql.cj.jdbc.Driver", "jdbc:mysql"},
        {"com.mysql.jdbc.Driver", "jdbc:mysql"},
        {"org.mariadb.jdbc.Driver", "jdbc:mariadb"}
    };

    public static Connection abrirConexao() {
        Connection con = null;
        String erro = "Nenhum driver JDBC encontrado (coloque o conector .jar em lib/).";
        for (String[] d : DRIVERS) {
            try {
                Class.forName(d[0]);
            } catch (ClassNotFoundException e) {
                continue;
            }
            try {
                String url = d[1] + "://" + HOST + ":" + PORTA + "/" + BANCO;
                con = DriverManager.getConnection(url, USUARIO, SENHA);
                System.out.println("Conexão aberta.");
                return con;
            } catch (SQLException e) {
                erro = e.getMessage();
            }
        }
        System.out.println(erro);
        return con;
    }

    public static void fecharConexao(Connection con) {
        try {
            if (con != null) {
                con.close();
                System.out.println("Conexão fechada.");
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
}
