public class Student extends Person {

    private String className;

    Student(String name, int age, String email, String className) {
        super(name, age, email);

        this.className = className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getClassName() {
        return this.className;
    }

    @Override
    public void sendEmail(String message) {
        System.out.println(String.format("To: %s \nDear Student: %s", this.name, message));
    }

}
