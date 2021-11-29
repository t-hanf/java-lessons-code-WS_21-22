public class Calc {

    static int divide(int a, int b) throws DivisionByZeroException {
        if (b == 0) {
            throw new DivisionByZeroException("Divison by Zero");
        }
        return a / b;
    }

    public static void main(String[] args) {
        int a;
        try {
            a = divide(7, 1);

        } catch (DivisionByZeroException e) {
            e.printStackTrace();
            a = 0;
        } finally {
            System.out.println("finally");
        }

        System.out.println(a);
    }
}