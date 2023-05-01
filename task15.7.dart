//Create a class "Client" that have 2 private attributes:
//  Name (Can't be changed).
//  PurchaseAmount (double) have 2 methods (get,add).
// Create Constructor that initialize the name.
// Create class "LoyalClient" that have 1 private attribute:
// PurchasesAmount (double) have 1 methods (get).
// Create a method "discount" that assign to PurchasesAmount (subclass)
// that value of PurchasesAmount (superclass) after reduction of 10%. Create a small test program (main).
//Note : Use different names for the get methods

class Client {
  final String _name;
  double _purchaseAmount;

  Client(this._name) : _purchaseAmount = 0;

  String getName() => _name;
  double getPurchaseAmount() => _purchaseAmount;

  void addPurchase(double amount) => _purchaseAmount += amount;
}

class LoyalClient extends Client {
  double _discountedPurchaseAmount;

  LoyalClient(String name) : super(name) {
    _discountedPurchaseAmount = 0;
  }

  double getDiscountedPurchaseAmount() => _discountedPurchaseAmount;

  void applyDiscount() {
    _discountedPurchaseAmount = super.getPurchaseAmount() * 0.9;
  }
}

void main() {
  Client c1 = Client('Alice');
  c1.addPurchase(1000);
  c1.addPurchase(500);

  LoyalClient c2 = LoyalClient('Bob');
  c2.addPurchase(2000);
  c2.applyDiscount();

  print(
      '${c1.getName()}\'s total purchases: ${c1.getPurchaseAmount()}'); // Output: Alice's total purchases: 1500.0
  print(
      '${c2.getName()}\'s total purchases: ${c2.getPurchaseAmount()}'); // Output: Bob's total purchases: 2000.0
  print(
      '${c2.getName()}\'s discounted purchases: ${c2.getDiscountedPurchaseAmount()}'); // Output: Bob's discounted purchases: 1800.0
}
