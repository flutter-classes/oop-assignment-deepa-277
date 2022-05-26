import 'dart:io';

class Account {
  int acNo;
  String acType;
  double acBalance;

  Account({
    required this.acNo,
    required this.acType,
    required this.acBalance,
  });

  accDetail() {
    print("Account Number: $acNo");
    print("Account Type: $acType");
    print("Account Balance: $acBalance");
    return;
  }

  withDraw() {
    print("Enter your amount to withdraw...");
    double withdraw = double.parse(stdin.readLineSync()!);
    var balance = this.acBalance - withdraw;
    if (balance <= 1000) {
      print("Not Sufficient Balance...");
    } else {
      print("The amount withdrawn is $withdraw");
    }
    return;
  }

  depoBalance() {
    print("Enter the amount you wish to deposite...");
    double amount = double.parse(stdin.readLineSync()!);
    var balance = this.acBalance + amount;
    print("Succefully Deposited...");
    print("Your Balance is now $balance");
    return;
  }
}

main() {
  var acc = Account(acNo: 1234567890, acType: "Saving", acBalance: 1000);
  acc.accDetail();
  acc.depoBalance();
  acc.withDraw();
}
