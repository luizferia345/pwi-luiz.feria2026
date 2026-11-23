package psv;

import java.sql.*;
import java.util.*;

public class Teste {

    public static void main(String[] args) {
        Connection con = Conexao.abrirConexao();
        if (con == null) {
            return;
        }
        CarroBean cb = new CarroBean();
        CarroDAO cd = new CarroDAO(con);

        // Testando método inserir
        cb.setPlaca("JKL2897");
        cb.setCor("Verde");
        cb.setDescricao("Carro 3");
        System.out.println(cd.inserir(cb));

        // Testando método alterar
        cb.setCor("Amarelo");
        System.out.println(cd.alterar(cb));

        // Testando método listarTodos
        List<CarroBean> lista = cd.listarTodos();
        if (lista != null) {
            for (CarroBean carro : lista) {
                System.out.println("Placa: " + carro.getPlaca());
                System.out.println("Cor: " + carro.getCor());
                System.out.println("Descrição: " + carro.getDescricao());
            }
        }

        // Testando excluir (remove o carro de teste)
        System.out.println(cd.excluir(cb));

        Conexao.fecharConexao(con);
    }
}
