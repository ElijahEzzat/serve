class Wallet {
  double balance;
  List<String> paymentMethods;

  Wallet({this.balance = 0, this.paymentMethods = const []});

  factory Wallet.fromJson(Map<String, dynamic> json) {
    return Wallet(
      balance: json['balance'] ?? 0,
      paymentMethods: List<String>.from(json['paymentMethods'] ?? []),
    );
  }

  Map<String, dynamic> toJson() => {
    'balance': balance,
    'paymentMethods': paymentMethods,
  };
}