public class Main {

    public static void main(String[] args) {
        Person p1 = new Person("bob", 21, "bob@school.org");
        Student p2 = new Student("john", 15, "john@school.org", "10c");

        p1.sendEmail("Hello");
        p2.sendEmail("Hello");

        System.out.println(p2.getClassName());
    }

}
