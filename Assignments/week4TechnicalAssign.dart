import 'dart:io';

// Define an interface
abstract class Shape {
  double calculateArea();
}

// Define a class Circle that implements the Shape interface
class Circle implements Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

// Define a class Square that inherits from Shape
class Square implements Shape {
  double sideLength;

  Square(this.sideLength);

  @override
  double calculateArea() {
    return sideLength * sideLength;
  }
}

// Define a class Rectangle that inherits from Shape and overrides calculateArea method
class Rectangle implements Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double calculateArea() {
    return length * width;
  }
}

// Define a method to demonstrate the use of a loop
void printAreas(List<Shape> shapes) {
  for (var shape in shapes) {
    print("Area: ${shape.calculateArea()}");
  }
}

// Define a function to read data from a file and create instances of classes
List<Shape> readShapesFromFile(String filename) {
  final shapes = <Shape>[];
  final file = File(filename);

  file.readAsLinesSync().forEach((line) {
    final data = line.split(',');
    switch (data[0]) {
      case 'Circle':
        shapes.add(Circle(double.parse(data[1])));
        break;
      case 'Square':
        shapes.add(Square(double.parse(data[1])));
        break;
      case 'Rectangle':
        shapes.add(Rectangle(double.parse(data[1]), double.parse(data[2])));
        break;
    }
  });

  return shapes;
}

void main() {
  // Create instances of classes initialized with data from a file
  final shapes = readShapesFromFile('shapes_data.txt');

  // Print areas of shapes using a loop
  printAreas(shapes);
}
