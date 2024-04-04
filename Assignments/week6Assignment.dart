// Function to add two numbers
int addNumbers(int num1, int num2) {
  return num1 + num2;
}

void main() {
  // Task 1: Function to add two numbers
  print("Adding two numbers:");
  int result = addNumbers(8, 2);
  print("Sum of 8 and 2 is: $result\n");

  // Task 2: For loop to print numbers from 1 to 10
  print("Printing numbers from 1 to 10:");
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
  print("");

  // Task 3: Switch statement to check different string values
  print("Using switch statement:");
  String fruit = "apple";
  switch (fruit) {
    case "apple":
      print("It's an apple.");
      break;
    case "banana":
      print("It's a banana.");
      break;
    case "orange":
      print("It's an orange.");
      break;
    default:
      print("Unknown fruit.");
  }
  print("");

  // Task 4: While loop to print numbers from 20 to 10
  print("Printing numbers from 20 to 10 using while loop:");
  int number = 20;
  while (number >= 10) {
    print(number);
    number--;
  }
  print("");

  // Task 5: If-else statement to check if a number is even or odd
  print("Checking if a number is even or odd:");
  int num = 15;
  if (num % 2 == 0) {
    print("$num is even.");
  } else {
    print("$num is odd.");
  }
  print("");

  // Task 6: Finding the largest number in a list
  print("Finding the largest number in a list:");
  List<int> numbers = [10, 5, 20, 8, 15];
  int largest = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }
  print("The largest number in the list is: $largest\n");

  // Task 7: Try-catch block to catch an exception
  print("Using try-catch block:");
  try {
    int result = 10 ~/ 0; // This will throw a division by zero exception
    print("Result: $result");
  } catch (e) {
    print("Error: $e");
  }
}
