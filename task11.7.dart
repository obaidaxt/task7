// Given a List A of size N . Print the average (mean) of the List numbers. Note: Solve this problem using function

// double calculateAverage(List<double> numbers) {
//   double total = numbers.reduce((value, element) => value + element);
//   double count = numbers.length;
//   double average = total / count;
//   return average;
// }

/** without using reduce function */

// double calculateAverage(List<double> numbers) {
//   if (numbers.isEmpty) {
//     return 0;
//   }
//   double total = 0;
//   for (double number in numbers) {
//     total += number;
//   }
//   double average = total / numbers.length;
//   return average;
// }

/**without isEmbty function */
double calculateAverage(List<double> numbers) {
  double total = 0;
  int count = 0;
  for (double number in numbers) {
    total += number;
    count++;
  }
  if (count == 0) {
    return 0;
  }
  double average = total / count;
  return average;
}
