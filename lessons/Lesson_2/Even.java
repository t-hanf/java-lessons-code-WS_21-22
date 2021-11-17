package Lesson_2;

class Even {
    public static void main(String[] args) {
        // whileEven();
        forEven();

    }

    static void whileEven() {
        int i = 1;
        while (i <= 100) {
            if (i % 2 == 0) {
                System.out.println(i);
            }
            i++;
        }
    }

    static void forEven() {
        for (int i = 2; i <= 100; i += 2) {
            System.out.println(i);
        }
    }

    static boolean isEven(int n) {
        return n % 2 == 0;
    }
}