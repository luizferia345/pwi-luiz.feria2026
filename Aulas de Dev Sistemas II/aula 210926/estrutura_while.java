public class estrutura_while {
    public static void main(String[] args) {
        int cont = 1, r = 0, num = 5;
        System.out.println("Digite um número: ");

        while (cont <= 10) {
            r = num * cont;
            System.out.println(num + " x " + cont + " = " + r);
            cont = cont + 1;
        }

        System.exit(0);
    }
}
