// . Given a number R calculate the area of a circle using
// the following formula: Area = π * R2.
double calculateCircleArea(double radius) {
  const pi = 3.14159;
  double area = pi * radius * radius;
  return area;
}

void main() {
  double radius = 5;
  double area = calculateCircleArea(radius);
  print("The area of the circle with radius $radius is $area");
}
