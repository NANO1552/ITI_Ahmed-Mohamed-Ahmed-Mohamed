// Task 3: Demonstrate Polymorphism

// Abstract class Shape with an abstract method area()
abstract class Shape {
  // Abstract method to be implemented by subclasses
  double area();
}

// Subclass Circle that extends Shape
class Circle extends Shape {
  double radius;  // Radius of the circle

  // Constructor for Circle
  Circle(this.radius);

  // Implementing the area method for Circle
  @override
  double area() {
    return 3.14 * radius * radius; // Calculate and return the area of the circle in cm²
  }
}

// Subclass Rectangle that extends Shape
class Rectangle extends Shape {
  double width;   // Width of the rectangle
  double height;  // Height of the rectangle

  // Constructor for Rectangle
  Rectangle(this.width, this.height);

  // Implementing the area method for Rectangle
  @override
  double area() {
    return width * height; // Calculate and return the area of the rectangle in cm²
  }
}

// Function to demonstrate polymorphism
void printArea(Shape shape) {
  print('Area: ${shape.area().toStringAsFixed(2)} cm²'); // Call the area() method of Shape polymorphically and print in cm²
}

void main() {
  // Create instances of Circle and Rectangle
  Circle circle = Circle(55.5); // Circle with radius 55.5 cm
  Rectangle rectangle = Rectangle(4.5, 5.4); // Rectangle with width 4.5 cm and height 5.4 cm

  // Demonstrate polymorphism by passing different shapes to the function
  print('Circle:');
  printArea(circle); // Output the area of the circle

  print(''); // Add a blank line for clarity

  print('Rectangle:');
  printArea(rectangle); // Output the area of the rectangle
}
