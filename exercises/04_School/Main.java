public class Main {
    public static void main(String[] args) {
        Student john = new Student("john", 16, "john@school.org", "11c");
        john.sendEmail("Hello");
        System.out.println(john);

        String[] curMA = { "Addition", "Subtraction" };
        Subject math = new Subject("Math", curMA);
        System.out.println(math);

        String[] curHS = { "WW2", "WW1" };
        Subject his = new Subject("History", curHS);

        Subject[] bob_subjects = new Subject[] { math };

        Teacher bob = new Teacher("bob", 42, "bob2@school.org", 1050.4f, 30, bob_subjects);

        System.out.println(bob.teach(math));
        System.out.println(bob.teach(his));

        Lesson math_2 = new Lesson(bob, "22.11.2021", math);

        System.out.println(john.addLesson(math_2));
        System.out.println(john.addLesson(math_2));
        System.out.println(john.addLesson(math_2));
        System.out.println(john.addLesson(math_2));
        System.out.println(john.addLesson(math_2));
        System.out.println(john.addLesson(math_2));
        System.out.println(john.addLesson(math_2));
        System.out.println(john.addLesson(math_2));
        System.out.println(john.addLesson(math_2));
        System.out.println(john.addLesson(math_2));
        System.out.println(john.addLesson(math_2));

    }

}
