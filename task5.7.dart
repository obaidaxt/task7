//  Given a number N . Print 2 lines that contain the following respectively:
//  Print N in a reversed order and not leading zeroes.
//  If N is a palindrome number print "YES" otherwise, print "NO.

void main() {
  int n = 123450;
  int reversedNumber = 0;
  int originalNumber = n;

  // Reverse N
  while (originalNumber != 0) {
    reversedNumber = reversedNumber * 10 + originalNumber % 10;
    originalNumber ~/= 10;
  }

  // Print N in reverse order
  print(reversedNumber);

  // Check if N is a palindrome
  bool isPalindrome = n == reversedNumber;

  // Print the result
  if (isPalindrome) {
    print("YES");
  } else {
    print("NO");
  }
}
