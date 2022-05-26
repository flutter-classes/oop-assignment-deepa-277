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
  }
}
