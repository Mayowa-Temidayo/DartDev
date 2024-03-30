import 'dart:io';

// Interface for classes that can be initialized from a file
abstract class FileInitializable {
  void initializeFromFile(String filePath);
}

// Base class representing a shape
abstract class Shape {
  // Method to calculate area
  double calculateArea();
}

// Class representing a rectangle
class Rectangle extends Shape implements FileInitializable {
  double width=10;
  double height=5;

  @override
  void initializeFromFile(String filePath) {
    final file = File(filePath);
    final lines = file.readAsLinesSync();
    width = double.parse(lines[0]);
    height = double.parse(lines[1]);
  }

  @override
  double calculateArea() {
    return width * height;
  }
}

// Class representing a circle
class Circle extends Shape implements FileInitializable {
  double radius=3;

  @override
  void initializeFromFile(String filePath) {
    final file = File(filePath);
    final lines = file.readAsLinesSync();
    radius = double.parse(lines[0]);
  }

  @override
  double calculateArea() {
    return 3.14 * radius * radius; // Approximation of PI
  }
}

void main() {
  // Creating instances of Rectangle and Circle initialized from file
  final rectangle = Rectangle();
  rectangle.initializeFromFile('rectangle.txt');
  
  final circle = Circle();
  circle.initializeFromFile('circle.txt');

  // Calculating and printing areas
  print('Rectangle Area: ${rectangle.calculateArea()}');
  print('Circle Area: ${circle.calculateArea()}');

  // Method demonstrating the use of a loop
  print('\nPrinting numbers from 1 to 5:');
  for (int i = 1; i <= 5; i++) {
    print(i);
  }
}
