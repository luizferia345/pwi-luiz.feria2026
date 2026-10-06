public class aula {
    
    // Método que demonstra switch-case com inteiros
    public static String verificarDia(int dia) {
        String nomeDia;
        
        switch (dia) {
            case 1:
                nomeDia = "Segunda-feira";
                break;
            case 2:
                nomeDia = "Terça-feira";
                break;
            case 3:
                nomeDia = "Quarta-feira";
                break;
            case 4:
                nomeDia = "Quinta-feira";
                break;
            case 5:
                nomeDia = "Sexta-feira";
                break;
            case 6:
                nomeDia = "Sábado";
                break;
            case 7:
                nomeDia = "Domingo";
                break;
            default:
                nomeDia = "Dia inválido";
        }
        
        return nomeDia;
    }
    
    // Método que demonstra switch-case com String
    public static String verificarSemestre(String mes) {
        String semestre;
        
        switch (mes.toLowerCase()) {
            case "janeiro":
            case "fevereiro":
            case "março":
                semestre = "1º Semestre";
                break;
            case "abril":
            case "maio":
            case "junho":
                semestre = "2º Semestre";
                break;
            case "julho":
            case "agosto":
            case "setembro":
                semestre = "3º Semestre";
                break;
            case "outubro":
            case "novembro":
            case "dezembro":
                semestre = "4º Semestre";
                break;
            default:
                semestre = "Mês inválido";
        }
        
        return semestre;
    }
    
    // Método que demonstra switch-case com char
    public static String verificarGrau(char grau) {
        String conceito;
        
        switch (grau) {
            case 'A':
                conceito = "Excelente";
                break;
            case 'B':
                conceito = "Muito Bom";
                break;
            case 'C':
                conceito = "Bom";
                break;
            case 'D':
                conceito = "Regular";
                break;
            case 'F':
                conceito = "Insuficiente";
                break;
            default:
                conceito = "Grau inválido";
        }
        
        return conceito;
    }
    
    // Método que demonstra IF-ELSE simples
    public static String verificarIdade(int idade) {
        String categoria;
        
        if (idade < 13) {
            categoria = "Criança";
        } else if (idade < 18) {
            categoria = "Adolescente";
        } else if (idade < 60) {
            categoria = "Adulto";
        } else {
            categoria = "Idoso";
        }
        
        return categoria;
    }
    
    // Método que demonstra IF-ELSE com validação
    public static String verificarNota(double nota) {
        String resultado;
        
        if (nota < 0 || nota > 10) {
            resultado = "Nota inválida! Deve estar entre 0 e 10";
        } else if (nota >= 9) {
            resultado = "Aprovado com excelência";
        } else if (nota >= 7) {
            resultado = "Aprovado";
        } else if (nota >= 5) {
            resultado = "Recuperação";
        } else {
            resultado = "Reprovado";
        }
        
        return resultado;
    }
    
    // Método que demonstra IF-ELSE com múltiplas condições (&&, ||)
    public static String verificarLoginValido(String usuario, String senha) {
        String mensagem;
        
        if (usuario == null || usuario.isEmpty()) {
            mensagem = "Usuário não pode estar vazio";
        } else if (senha == null || senha.isEmpty()) {
            mensagem = "Senha não pode estar vazia";
        } else if (usuario.length() < 3 || senha.length() < 6) {
            mensagem = "Usuário deve ter 3+ caracteres e senha 6+ caracteres";
        } else if (usuario.equals("admin") && senha.equals("123456")) {
            mensagem = "Login realizado com sucesso!";
        } else {
            mensagem = "Usuário ou senha incorretos";
        }
        
        return mensagem;
    }
    
    // Método que demonstra IF-ELSE aninhado
    public static String verificarTemperatura(double temperatura) {
        String condicao;
        
        if (temperatura < 0) {
            condicao = "Congelando";
        } else {
            if (temperatura < 15) {
                condicao = "Muito Frio";
            } else if (temperatura < 25) {
                condicao = "Agradável";
            } else {
                condicao = "Muito Quente";
            }
        }
        
        return condicao;
    }
    
    // Main - Testando todos os métodos
    public static void main(String[] args) {
        System.out.println("=== EXEMPLOS DE SWITCH-CASE ===\n");
        
        // Teste 1: Dias da semana
        System.out.println("--- Dias da Semana (Switch) ---");
        System.out.println("Dia 1: " + verificarDia(1));
        System.out.println("Dia 5: " + verificarDia(5));
        System.out.println("Dia 7: " + verificarDia(7));
        System.out.println("Dia 10: " + verificarDia(10));
        
        // Teste 2: Semestre
        System.out.println("\n--- Semestres (Switch) ---");
        System.out.println("Março: " + verificarSemestre("março"));
        System.out.println("Junho: " + verificarSemestre("junho"));
        System.out.println("Dezembro: " + verificarSemestre("dezembro"));
        
        // Teste 3: Conceitos com char
        System.out.println("\n--- Conceitos (Switch) ---");
        System.out.println("Grau A: " + verificarGrau('A'));
        System.out.println("Grau C: " + verificarGrau('C'));
        System.out.println("Grau F: " + verificarGrau('F'));
        
        System.out.println("\n=== EXEMPLOS DE IF-ELSE ===\n");
        
        // Teste 4: Verificar idade
        System.out.println("--- Categoria por Idade (If-Else) ---");
        System.out.println("Idade 10: " + verificarIdade(10));
        System.out.println("Idade 15: " + verificarIdade(15));
        System.out.println("Idade 30: " + verificarIdade(30));
        System.out.println("Idade 65: " + verificarIdade(65));
        
        // Teste 5: Verificar nota
        System.out.println("\n--- Nota do Aluno (If-Else) ---");
        System.out.println("Nota 9.5: " + verificarNota(9.5));
        System.out.println("Nota 7.0: " + verificarNota(7.0));
        System.out.println("Nota 5.5: " + verificarNota(5.5));
        System.out.println("Nota 3.0: " + verificarNota(3.0));
        System.out.println("Nota 11.0: " + verificarNota(11.0));
        
        // Teste 6: Validar login
        System.out.println("\n--- Validação de Login (If-Else com &&, ||) ---");
        System.out.println(verificarLoginValido("", "senha"));
        System.out.println(verificarLoginValido("user", ""));
        System.out.println(verificarLoginValido("ab", "12345"));
        System.out.println(verificarLoginValido("admin", "123456"));
        System.out.println(verificarLoginValido("admin", "senha"));
        
        // Teste 7: Temperatura
        System.out.println("\n--- Temperatura (If-Else Aninhado) ---");
        System.out.println("Temperatura -5°C: " + verificarTemperatura(-5));
        System.out.println("Temperatura 10°C: " + verificarTemperatura(10));
        System.out.println("Temperatura 22°C: " + verificarTemperatura(22));
        System.out.println("Temperatura 35°C: " + verificarTemperatura(35));
    }
}