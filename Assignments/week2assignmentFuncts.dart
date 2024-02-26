//declaring functions first line 2-30
int addTwo(int num1, int num2) {
  return num1 + num2;
}

int subtractTwo(int num1, int num2) {
  return num1 - num2;
}

int multiplyTwo(int num1, int num2) {
  return num1 * num2;
}

double divideTwo(double num1, double num2) {
  if (num2 == 0) {
    throw ArgumentError('Cannot divide by zero');
  }
  return num1 / num2;
}

int stringLength(String text) {
  return text.length;
}

dynamic getFirstElement(List<dynamic> list) {
  if (list.isEmpty) {
    throw ArgumentError('The list is empty');
  }
  return list[0];
}

/*void main() {
 
  //int result; //uncomment this local variable and use for lines 24-25, 27-28, 30-31 respectively.
  
 /* result = addTwo(5, 7);
  print('The sum is: $result');*/
  
 /* result = subtractTwo(9, 5);
  print('The difference is: $result');*/

  /* result = multiplyTwo(2, 5);
  print('The product is: $result');*/

  /*double result2;

  result2 = divideTwo(10, 2);
  print('The quotient is: $result2');*/

}
*/

/*void main() {
  // Example o textLenght:
  String ExampleText = "Hello, world!";
  int length = stringLength(ExampleText);
  print('The length of the string is: $length'); // Output: The length of the string is: 13
}
*/


void main() {
  // Example usage:
  List<int> numbers = [1, 2, 3, 4, 5];
  int firstElement = getFirstElement(numbers);
  print('The first element of the list is: $firstElement'); // Output: The first element of the list is: 1
}
