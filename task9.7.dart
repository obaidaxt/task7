//Kolya is going to make fresh orange juice.
//He has n oranges of sizes a 1 , a 2 , ..., a n .
// Kolya will put them in the juicer in the fixed order,
// starting with orange of size a 1 , then orange of size a 2 and so on.
// To be put in the juicer the orange must have size not exceeding b ,
// so if Kolya sees an orange that is strictly greater he throws it away and continues
// with the next one. The juicer has a special section to collect waste.
// It overflows if Kolya squeezes oranges of the total size strictly greater than d .
// When it happens Kolya empties the waste section (even if there are no more oranges) and continues to squeeze the juice.
//How many times will he have to empty the waste section

int calculateWasteEmpties(List<int> oranges, int b, int d) {
  int totalSize = 0;
  int wasteEmpties = 0;

  for (int i = 0; i < oranges.length; i++) {
    if (oranges[i] <= b) {
      totalSize += oranges[i];
      if (totalSize > d) {
        wasteEmpties++;
        totalSize = 0;
      }
    }
  }

  if (totalSize > 0) {
    wasteEmpties++;
  }

  return wasteEmpties;
}

void main() {
  List<int> oranges = [3, 5, 8, 4, 2, 9, 1];
  int b = 6;
  int d = 15;
  int wasteEmpties = calculateWasteEmpties(oranges, b, d);
  print(wasteEmpties);
}
