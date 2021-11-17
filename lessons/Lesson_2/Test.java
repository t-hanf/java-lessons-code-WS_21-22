package Lesson_2;

import java.util.Scanner;

class Test {
    public static void main(String[] args) {

        Scanner in = new Scanner(System.in);

        System.out.print("Input a number: ");
        int a = in.nextInt();
        System.out.println("Input " + a);

        System.out.print("Input a number: ");
        double b = in.nextDouble();
        System.out.println("Input " + b);

        in.nextLine();

        System.out.print("Input a string: ");
        String c = in.nextLine();
        System.out.println("Input " + c);

    }
}