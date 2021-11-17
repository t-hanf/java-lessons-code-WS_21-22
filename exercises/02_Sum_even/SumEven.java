public class SumEven {

    public static void main(String[] args) {

        sumWhile();
        sumFor();

    }

    static void sumWhile() {
        int a = 0;
        int sum = 0;
        while (a <= 100) {
            if (a % 2 == 0) {
                sum += a;
            }
            a++;
        }
        System.out.println(sum);
    }

    static void sumFor() {
        int sum = 0;
        for (int i = 0; i <= 100; i += 2) {
            sum += i;
        }

        System.out.println(sum);
    }
}