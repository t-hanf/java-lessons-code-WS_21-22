public class Subject {
    private String name;
    private String[] curriculum;

    public Subject(String name, String[] curriculum) {
        this.name = name;
        this.curriculum = curriculum.clone();
    }

    @Override
    public String toString() {
        String result = "";
        result += "Subject: " + this.name + "\n";

        for (int i = 0; i < this.curriculum.length; i++) {
            result += this.curriculum[i] + "\n";
        }

        return result;
    }

}
