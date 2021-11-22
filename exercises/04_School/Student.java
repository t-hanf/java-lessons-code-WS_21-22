public class Student extends Person {

    private Lesson[] lessons = new Lesson[10];
    private String className;
    private int lessonCount = 0;

    Student(String name, int age, String email, String className) {
        super(name, age, email);

        this.className = className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getClassName() {
        return className;
    }

    public boolean addLesson(Lesson lesson) {
        if (lessonCount == 10) {
            return false;
        }

        lessons[lessonCount++] = lesson;

        return true;
    }

    @Override
    public void sendEmail(String message) {
        System.out.println(String.format("To: %s \nDear Student: %s", this.getEmail(), message));
    }

    @Override
    public String toString() {
        return "Student: " + this.getName();
    }
}
