//  Timon has a candies and his friend, Pumbaa, has b candies, so Pumbaa asked Timon to tell him
//the value of a − b . However, Timon will tell him the value of a − b if the value is ≥0 ; otherwise,he will lie and say 0 .
//Since it was a hard task for Timon, he's asking for your help.Given two numbers a and b , find the answer.

int calculateDifference(int a, int b) {
  int difference = a - b;
  if (difference >= 0) {
    return difference;
  } else {
    return 0;
  }
}

void main() {
  int a = 7;
  int b = 10;
  int difference = calculateDifference(a, b);
  print(difference);
}
