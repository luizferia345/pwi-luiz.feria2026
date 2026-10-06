public class EtecJava {
    public static void main(String[] args) {
        int i, r = 0, num = 5;
        System.out.println("tabuada do " + num);

        for (i = 1; i <= 10; i++) {
            r = num * i;
            System.out.println(num + " x " + i + " = " + r);
        }
    }
}