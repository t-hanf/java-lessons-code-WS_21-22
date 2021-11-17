import java.util.Scanner;

class Methods {

    public static void main(String[] args) {
        helloMethod();

        Scanner sc = new Scanner(System.in);
        String input = sc.nextLine();
        printHello(input);
        input = sc.nextLine();
        System.out.println(getHello(input));
    }

    static void helloMethod() {
        System.out.println("Hello, Method!");

    }

    static void printHello(String input) {
        System.out.println("Hello, " + input + "!");
    }

    static String getHello(String input) {
        String hello = "Bonjour, " + input + "!";
        return hello;
        // return "Hello, " + input + "!";
    }

}
