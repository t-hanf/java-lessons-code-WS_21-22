public class Circle implements Shape {
    private double radius;

    Circle(double radius) {
        this.radius = radius;
    }

    @Override
    public double getPerimeter() {
        return 2 * pi * this.radius;
    }

    @Override
    public double getArea() {
        return pi * Math.pow(this.radius, 2);
    }

    @Override
    public String toString() {
        return String.format("Circle with radius: %.3f\nPerimeter: %.3f\nArea: %.3f", this.radius, getPerimeter(),
                getArea());
    }

}
