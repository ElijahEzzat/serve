import 'package:flutter/material.dart';
import 'package:serve_me/Customer/CustomerApp/modules/Customer/Payment/PaymentSuccess.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentDBScreen extends StatefulWidget {

  @override
  _PaymentDBScreenState createState() => _PaymentDBScreenState();
}

class _PaymentDBScreenState extends State<PaymentDBScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: 'https://www.sandbox.paypal.com/eg/home',
        ),
      ),
    );
  }
}
