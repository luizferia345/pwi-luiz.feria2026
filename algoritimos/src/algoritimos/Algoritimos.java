/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package algoritimos;

public class Algoritimos {

    public static void main(String[] args) {
 short a, b;

        a = 6;
        b = 10;

        // Operadores lógicos
        boolean resultadoE;
        boolean resultadoOU;
        boolean resultadoNOT;

        // E (AND)
        resultadoE = (a < b) && (a > 0);

        // OU (OR)
        resultadoOU = (a > b) || (b > 0);

        // NOT (NÃO)
        resultadoNOT = !(a > b);

        System.out.println("Valores:");
        System.out.println("a = " + a);
        System.out.println("b = " + b);

        System.out.println("\nOperadores Lógicos:");

        System.out.println("(a < b) && (a > 0) = " + resultadoE);
        System.out.println("(a > b) || (b > 0) = " + resultadoOU);
        System.out.println("!(a > b) = " + resultadoNOT);

    }
}