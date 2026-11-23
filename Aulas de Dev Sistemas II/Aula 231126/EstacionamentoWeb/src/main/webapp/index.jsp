<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*,java.util.*,psv.*" %>
<%!
    static String esc(String s) {
        if (s == null) return "";
        return s.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;").replace("\"", "&quot;");
    }
%>
<%
    request.setCharacterEncoding("UTF-8");
    String mensagem = "";
    String acao = request.getParameter("acao");
    String placa = request.getParameter("placa");
    String cor = request.getParameter("cor");
    String descricao = request.getParameter("descricao");

    Connection con = Conexao.abrirConexao();
    List<CarroBean> lista = null;
    if (con == null) {
        mensagem = "Sem conexão com o banco. Verifique se o MySQL está ligado e se o banco 'estacionamento' existe.";
    } else {
        CarroDAO dao = new CarroDAO(con);
        if ("POST".equalsIgnoreCase(request.getMethod()) && acao != null) {
            CarroBean cb = new CarroBean();
            cb.setPlaca(placa);
            cb.setCor(cor);
            cb.setDescricao(descricao);
            if ("incluir".equals(acao)) mensagem = dao.inserir(cb);
            else if ("alterar".equals(acao)) mensagem = dao.alterar(cb);
            else if ("excluir".equals(acao)) mensagem = dao.excluir(cb);
            if (!"editar".equals(acao)) { placa = cor = descricao = ""; }
        }
        lista = dao.listarTodos();
        Conexao.fecharConexao(con);
    }
    if (placa == null) placa = "";
    if (cor == null) cor = "";
    if (descricao == null) descricao = "";
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>Estacionamento</title>
<style>
  body { font-family: Arial, sans-serif; margin: 0; background: #ccc; }
  header { background: #fff; color: #cc6600; font: 20px "Arial Black", Arial, sans-serif; padding: 12px 24px; }
  main { max-width: 620px; margin: 0 auto; padding: 16px; }
  label { display: block; margin-top: 10px; }
  input[type=text] { width: 100%; box-sizing: border-box; padding: 6px; }
  .msg { color: #ff6666; font: 14px "Arial Black", Arial, sans-serif; min-height: 20px; margin: 12px 0; }
  button { padding: 6px 14px; margin-right: 6px; }
  table { width: 100%; border-collapse: collapse; margin-top: 16px; background: #fff; }
  th, td { border: 1px solid #999; padding: 6px; text-align: left; }
  a { color: #036; }
</style>
</head>
<body>
<header>Cadastramento de veículos</header>
<main>
  <form method="post" action="index.jsp" accept-charset="UTF-8">
    <label>Placa <input type="text" name="placa" maxlength="7" value="<%= esc(placa) %>"></label>
    <label>Cor <input type="text" name="cor" maxlength="20" value="<%= esc(cor) %>"></label>
    <label>Descrição <input type="text" name="descricao" maxlength="100" value="<%= esc(descricao) %>"></label>
    <div class="msg"><%= esc(mensagem) %></div>
    <button type="submit" name="acao" value="incluir">Incluir</button>
    <button type="submit" name="acao" value="alterar">Alterar</button>
    <button type="submit" name="acao" value="excluir" onclick="return confirm('Deseja excluir esse veículo?');">Excluir</button>
    <a href="index.jsp">Limpar</a>
  </form>

  <table>
    <tr><th>Placa</th><th>Cor</th><th>Descrição</th><th></th></tr>
<% if (lista != null) { for (CarroBean c : lista) { %>
    <tr>
      <td><%= esc(c.getPlaca()) %></td>
      <td><%= esc(c.getCor()) %></td>
      <td><%= esc(c.getDescricao()) %></td>
      <td><a href="index.jsp?placa=<%= java.net.URLEncoder.encode(c.getPlaca(), "UTF-8") %>&cor=<%= java.net.URLEncoder.encode(c.getCor() == null ? "" : c.getCor(), "UTF-8") %>&descricao=<%= java.net.URLEncoder.encode(c.getDescricao() == null ? "" : c.getDescricao(), "UTF-8") %>">selecionar</a></td>
    </tr>
<% } } %>
  </table>
</main>
</body>
</html>
