// Given two numbers X and N . Print the result of the following equation:
//  S = ( X^2 - 1) + ( X ^2 ) + ( X ^4 ) + ( X^ 6 ) + ............... + ( X^ N )
// Note: Solve this problem using function and don't use built-in function

int calculateS(int x, int n) {
  int result = x * x - 1;
  int powerOfX = x * x;
  int exponent = 2;

  for (int i = 2; i <= n; i++) {
    if (i % 2 == 0) {
      result += powerOfX;
      powerOfX *= powerOfX;
    } else {
      powerOfX *= x;
      result += powerOfX;
    }
  }

  return result;
}

void main() {
  int x = 2;
  int n = 5;
  int s = calculateS(x, n);

  print(s); // Output: 127
}
