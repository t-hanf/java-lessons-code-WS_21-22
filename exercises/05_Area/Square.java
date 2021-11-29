public class Square implements Shape {
    private double width;

    public Square(double width) {
        this.width = width;
    }

    @Override
    public double getPerimeter() {
        return 4 * this.width;
    }

    @Override
    public double getArea() {
        return this.width * this.width;
    }

    @Override
    public String toString() {
        return String.format("Square with width: %.3f\nPerimeter: %.3f\nArea: %.3f", this.width, getPerimeter(),
                getArea());
    }

}
