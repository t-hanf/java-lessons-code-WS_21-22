package exercise_solution;

public class Main {

    public static void main(String[] args) {

        Calculate calc = new Calculate(1, 2, "+");
        System.out.println(calc.toString());

        calc.setA(3);
        System.out.println(calc.toString());

        calc.setA(6);
        calc.setOperation("/");
        System.out.println(calc.toString());

        calc.setA(-6);
        calc.setB(-8);
        calc.setOperation("-");
        System.out.println(calc.toString());

        calc.setOperation("abscs");
        System.out.println(calc.toString());

    }

}
