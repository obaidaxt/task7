// We will define a class named Mobile in which we will define all its properties and methods,
// and then we will create objects of that class, with different values for those properties.
//Considers the objects as mobile phones provided by different companies,
//or different models of mobiles, 31 . iPhone 11 Pro can be one object,
// Samsung Galaxy S 20 can be anotherobject with its ownconfiguration,
//then One Plus 7 , and so on. Let us start with creating a simple class Mobile.
//It contains following properties and methods :
//- Properties :
// • B rand.
//• Model.
// • MRP. (Price)
// • Discount
//- Methods:
// • getActualPrice():-+// It will return discounted price of mobile.
//• printDetails(): This function will print details of mobile45----------2-45456+8*

class Mobile {
  String brand;
  String model;
  double mrp;
  double discount;

  Mobile(this.brand, this.model, this.mrp, this.discount);

  double getActualPrice() {
    return mrp - (mrp * discount / 100);
  }

  void printDetails() {
    print("Brand: $brand");
    print("Model: $model");
    print("MRP: $mrp");
    print("Discount: $discount%");
    print("Actual Price: ${getActualPrice()}");
  }
}

void main() {
  Mobile samsung = Mobile("Samsung", "Galaxy S20", 799.99, 15);
  Mobile oneplus = Mobile("OnePlus", "7", 699.99, 20);
  Mobile iphone = Mobile("Apple", "iPhone 11 Pro", 999.99, 10);

  iphone.printDetails();
  samsung.printDetails();
  oneplus.printDetails();
}
