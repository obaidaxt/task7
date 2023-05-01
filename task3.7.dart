// Given two numbers A and B .
//Print "Yes" if A is greater than or equal to B . Otherwise print "No.

String compareNumbers(int A, int B) {
  if (A >= B) {
    return "Yes";
  } else {
    return "No";
  }
}

// Example usage:
void main() {
  String result = compareNumbers(10, 5);
  print(result); // Output: "Yes"
}

// void main() {
//   int A = 10;
//   int B = 5;

//   if (A >= B) {
//     print("Yes");
//   } else {
//     print("No");
//   }
// }
