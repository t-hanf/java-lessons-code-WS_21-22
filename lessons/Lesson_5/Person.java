class Person {

    protected String name;
    private int age;
    private String email;

    public Person(String name, int age, String email) {
        this.name = name;
        this.age = age;
        this.email = email;
    }

    public String getName() {
        return this.name;
    }

    public int getAge() {
        return age;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void sendEmail(String message) {
        System.out.println(String.format("To: %s \n%s", this.name, message));
    }

    @Override
    public String toString() {
        return "Name: " + this.name;
    }
}
