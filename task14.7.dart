//Create a class called BankClient that have 3 private attributes :
//  ID : Which is generated automatically and represents the order of the client in the bank Data
// Base (starting from 1 and can't be changed) .
//  Name : (can't be changed).
//  Balance: have 3 methods (get, add, subtractIfPossible).
//Create a static method that print the number of clients and the bank balance.
//Create a small test program (main).
//Note: The balance is initialized at 0 and can't be negative

class BankClient {
  static int _numberOfClients = 0;
  static double _bankBalance = 0;

  final int _id;
  final String _name;
  double _balance;

  BankClient(this._name)
      : _id = ++_numberOfClients,
        _balance = 0;

  int get id => _id;
  String get name => _name;
  double get balance => _balance;

  void add(double amount) {
    _balance += amount;
    _bankBalance += amount;
  }

  bool subtractIfPossible(double amount) {
    if (_balance >= amount) {
      _balance -= amount;
      _bankBalance -= amount;
      return true;
    }
    return false;
  }

  static void printBankStatus() {
    print('Number of clients: $_numberOfClients');
    print('Bank balance: $_bankBalance');
  }
}

void main() {
  BankClient c1 = BankClient('Alice');
  BankClient c2 = BankClient('Bob');

  c1.add(1000);
  c1.add(500);
  c2.add(2000);

  print(
      '${c1.name}\'s balance: ${c1.balance}'); // Output: Alice's balance: 1500.0
  print(
      '${c2.name}\'s balance: ${c2.balance}'); // Output: Bob's balance: 2000.0

  if (c1.subtractIfPossible(700)) {
    print('Successful withdrawal of 700 from ${c1.name}\'s account');
  } else {
    print('Insufficient balance in ${c1.name}\'s account');
  }
  // Output: Successful withdrawal of 700 from Alice's account

  BankClient.printBankStatus();
  // Output: Number of clients: 2
  //         Bank balance: 2800.0
}
