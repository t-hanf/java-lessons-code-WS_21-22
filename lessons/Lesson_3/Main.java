
class Main {

    public static void main(String[] args) {
        Student student = new Student();
        student.setName("Peter");
        student.setMatriculationNumber(03252);
        System.out.println(student.getName());
        System.out.println(student.getMatriculationNumber());

        student.setName("Lena");
        student.setMatriculationNumber(21321);
        System.out.println(student.getName());
        System.out.println(student.getMatriculationNumber());
    }
}