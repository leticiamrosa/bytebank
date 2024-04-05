class Transaction {
  final double value;
  final int accountNumber;

  const Transaction(this.value, this.accountNumber);

  @override
  String toString() {
    return 'Transferencia - value: $value, accountNumber: $accountNumber';
  }
}
