public class HelloWorld {

    public static void main(String[] args) {

        // Defining new variable of type int with name a
        int a;

        // Assingning the variable a the value of 1
        a = 1;

        // Defining new variable of type int with name b and initializing it to 2
        int b = 2;

        // Defining an initializing variables of type float
        float c = 4.3f;
        float d = 2.5f;

        // Printing the string "Hello, World!" to the console
        System.out.println("Hello, World!");

        // Creating ab and assign the value of the sum of a and b
        int ab = a + b;

        // The variable ab gets converted to a string and concatinated
        // to the string "1 + 2 = "
        System.out.println("1 + 2 = " + ab);
        // Printing: 1 + 2 = 3

        // Addition can also be done in place
        System.out.println("1 + 2 = " + (a + b));
        // Printing: 1 + 2 = 3
    }

}
