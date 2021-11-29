public class Main {
    public static void main(String[] args) {
        Shape circle = new Circle(1.0);
        Shape square = new Square(3);
        Shape rectangle = new Rectangle(4.0, 2.0);

        System.out.println(circle.getArea());
        System.out.println(square);
        System.out.println(rectangle);

    }
}
