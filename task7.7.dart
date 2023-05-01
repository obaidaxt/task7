// Given a number N . Print all prime numbers between 1 and N

bool isPrime(int n) {
  if (n <= 1) {
    return false;
  }

  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) {
      return false;
    }
  }

  return true;
}

void printPrimes(int n) {
  for (int i = 2; i <= n; i++) {
    if (isPrime(i)) {
      print(i);
    }
  }
}

void main() {
  int n = 20;
  printPrimes(n);
}
