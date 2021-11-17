public class Calc {

    private int summand1;
    private int summand2;

    public int add() {
        return summand1 + summand2;
    }

    public Calc(int summand1, int summand2) {
        this.summand1 = summand1;
        this.summand2 = summand2;
    }

    public static void main(String[] args) {
        Calc cal = new Calc(1, 2);
        System.out.println("1 + 2 = " + cal.add());
    }

}
