package factory;

import java.sql.Connection;

public class TestaConexao {
    public static void main(String[] args) {
        try {
            try (Connection connection = new ConnectionFactory().getConnection()) {
                System.out.println("Ligação aberta com sucesso!");
            }
        } catch (Exception e) {
        }
    }
}