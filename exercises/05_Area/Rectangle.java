public class Rectangle implements Shape {
    private double length;
    private double width;

    Rectangle(double length, double width) {
        this.length = length;
        this.width = width;
    }

    @Override
    public double getPerimeter() {
        return 2 * length + 2 * width;
    }

    @Override
    public double getArea() {
        return length * width;
    }

    @Override
    public String toString() {
        return String.format("Rectangle with width: %.3f and length: %.3f\nPerimeter: %.3f\nArea: %.3f", this.width,
                this.length, getPerimeter(), getArea());
    }
}
