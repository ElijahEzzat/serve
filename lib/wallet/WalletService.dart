import 'dart:convert';

import 'package:serve_me/wallet/wallet.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WalletService {
  static const _key = 'wallet_data';

  Future<Wallet> getWallet() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString(_key);
    if (data == null) {
      return Wallet();
    }
    return Wallet.fromJson(json.decode(data));
  }

  Future<void> saveWallet(Wallet wallet) async {
    final prefs = await SharedPreferences.getInstance();
    final data = json.encode(wallet.toJson());
    prefs.setString(_key, data);
  }
}