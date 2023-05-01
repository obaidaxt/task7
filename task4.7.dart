//  Given N numbers. Count how many of these values are even, odd, positive and negative.
// void main() {
//   List<int> numbers = [-2, -1, 0, 1, 2];
//   var result = countNumbers(numbers);
//   print("Even: ${result[0]}");
//   print("Odd: ${result[1]}");
//   print("Positive: ${result[2]}");
//   print("Negative: ${result[3]}");
// }

// List<int> countNumbers(List<int> numbers) {
//   int evenCount = 0;
//   int oddCount = 0;
//   int positiveCount = 0;
//   int negativeCount = 0;

//   for (int num in numbers) {
//     if (num % 2 == 0) {
//       evenCount++;
//     } else {
//       oddCount++;
//     }

//     if (num >= 0) {
//       positiveCount++;
//     } else {
//       negativeCount++;
//     }
//   }

//   return [evenCount, oddCount, positiveCount, negativeCount];
// }
import 'dart:io';

void main() {
  int evenCount = 0;
  int oddCount = 0;
  int positiveCount = 0;
  int negativeCount = 0;

  print("Enter a sequence of numbers (separated by spaces):");
  String input = stdin.readLineSync()!;
  List<String> numbers = input.split(' ');

  for (String number in numbers) {
    int num = int.parse(number);
    if (num % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }

    if (num >= 0) {
      positiveCount++;
    } else {
      negativeCount++;
    }
  }

  print("Even: $evenCount");
  print("Odd: $oddCount");
  print("Positive: $positiveCount");
  print("Negative: $negativeCount");
}
