package exercise_solution;

public class Calculate {
    private int a;
    private int b;

    private String operation = "+";

    public Calculate(int a, int b, String operation) {
        this.a = a;
        this.b = b;
        this.setOperation(operation);
    }

    public int getA() {
        return a;
    }

    public int getB() {
        return b;
    }

    public void setA(int a) {
        this.a = a;
    }

    public void setB(int b) {
        this.b = b;
    }

    public String getOperation() {
        return operation;
    }

    public void setOperation(String operation) {
        if ("+-*/".contains(operation) && operation.length() == 1) {
            this.operation = operation;
        }
    }

    public int calc() {
        if (operation.equals("+")) {
            return a + b;
        } else if (operation == "-") {
            return a - b;
        } else if (operation == "*") {
            return a * b;
        } else if (operation == "/") {
            if (b == 0) {
                return 0;
            }

            return a / b;
        }

        // should not be reached
        return Integer.MIN_VALUE;
    }

    public String toString() {
        return String.format("The solution is for %d %s %d is: %d", this.a, this.operation, this.b, this.calc());
    }
}