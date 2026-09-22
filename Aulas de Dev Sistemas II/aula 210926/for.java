public class for {
    public static void main(String[] args) {
        int cont = 1, r = 0, num = 5;
        System.out.println("Digite um número: ");

        for (cont = 1; cont <= 10; cont++) {
            r = num * cont;
            System.out.println(num + " x " + cont + " = " + r);
        }

        System.exit(0);
    }
}
