public class Main {
    public static void main(String[] args) {
        Person john = new Person("john", 16, "john@school.org");
        john.sendEmail("Hello");
        System.out.println(john);

        String[] cur = { "Addition", "Subtraction" };
        Subject math = new Subject("Math", cur);
        System.out.println(math);
    }

}
