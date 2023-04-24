import 'package:flutter/material.dart';
import 'package:serve_me/wallet/wallet.dart';
import 'package:serve_me/wallet/WalletService.dart';


class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  late Wallet _wallet;
  final _service = WalletService();

  @override
  void initState() {
    super.initState();
    _loadWallet();
  }

  Future<void> _loadWallet() async {
    final wallet = await _service.getWallet();
    setState(() {
      _wallet = wallet;
    });
  }

  void _addPaymentMethod(String method) {
    setState(() {
      _wallet.paymentMethods.add(method);
    });
    _service.saveWallet(_wallet);
  }

  void _removePaymentMethod(String method) {
    setState(() {
      _wallet.paymentMethods.remove(method);
    });
    _service.saveWallet(_wallet);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Wallet'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Balance: \$${_wallet.balance}'),
            const SizedBox(height: 16),
            const Text('Payment methods:'),
            for (final method in _wallet.paymentMethods)
              ListTile(
                title: Text(method),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () => _removePaymentMethod(method),
                ),
              ),
            const SizedBox(height: 16),
            const Text('Add payment method:'),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Credit card number',
              ),
              onSubmitted: (value) {
                _addPaymentMethod(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}