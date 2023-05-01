// Given two numbers X and Y.
//Print the summation and multiplication and subtraction of  these 2 numbers.

// import 'dart:io';

// void main() {
//   print("Enter the first number: ");
//   int x = int.parse(stdin.readLineSync()!);

//   print("Enter the second number: ");
//   int y = int.parse(stdin.readLineSync()!);

//   // Performing the calculations
//   int sum = x + y;
//   int mul = x * y;
//   double sub = x - y;

//   // Printing the results
//   print("Summation is: $sum");
//   print("Multiplication is: $mul");
//   print("Subtraction is: $sub");
// }

/**  to write the same but with functions it will be as flollows **/
import 'dart:io';

void main() {
  double x = double.parse(stdin.readLineSync()!);
  double y = double.parse(stdin.readLineSync()!);

  print("Summation: ${add(x, y)}");
  print("Multiplication: ${multiply(x, y)}");
  print("Subtraction: ${subtract(x, y)}");
}

double add(x, y) {
  return x + y;
}

double multiply(x, y) {
  return x * y;
}

double subtract(x, y) {
  return x - y;
}
