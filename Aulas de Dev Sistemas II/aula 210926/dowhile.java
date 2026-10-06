public class dowhile {
    public static void main(String[] args) {
        int cont = 1, r = 0, num = 5;
        System.out.println("Digite um número: ");

        do {
            r = num * cont;
            System.out.println(num + " x " + cont + " = " + r);
            cont = cont + 1;
        } while (cont <= 10);

        System.exit(0);
    }
}