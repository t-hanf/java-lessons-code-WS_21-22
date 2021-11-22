class Teacher extends Person {

    private float salary;
    private int hours;

    private Subject[] subjects;

    Teacher(String name, int age, String email, float salary, int hours, Subject[] subjects) {
        super(name, age, email);

        this.salary = salary;
        this.hours = hours;

        if (subjects.length <= 3) {
            this.subjects = subjects.clone();
        }
    }

    public String teach(Subject subject) {
        for (int i = 0; i < subjects.length; i++) {
            if (subjects[i].equals(subject)) {
                return subject.toString();
            }
        }

        return "This teacher does not teach this subject";
    }

    @Override
    public String toString() {
        return "Teacher: " + this.getName();
    }

}