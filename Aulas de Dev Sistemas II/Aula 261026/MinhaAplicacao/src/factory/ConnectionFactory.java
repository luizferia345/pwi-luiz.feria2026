package factory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
    public Connection getConnection() {
        try {
            // URL de ligação: jdbc:mysql://servidor:porta/nome_da_base_de_dados
            String url = "jdbc:mysql://localhost:3306/projetojava";
            String utilizador = "root";
            String palavraPasse = ""; // Coloque a sua password aqui, se tiver

            // Carrega o driver (obrigatório em versões mais antigas do MySQL, como a 5.1)
            Class.forName("com.mysql.jdbc.Driver");
            
            return DriverManager.getConnection(url, utilizador, palavraPasse);
            
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("Driver do MySQL não encontrado! Verifique a biblioteca.", e);
        } catch (SQLException e) {
            throw new RuntimeException("Erro ao ligar à base de dados MySQL.", e);
        }
    }
}