import 'package:flutter/material.dart';
import 'package:serve_me/Customer/CustomerApp/modules/Customer/Payment/PaymentSuccess.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentScreen extends StatefulWidget {
  PaymentScreen (this.price);
  final int price;

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {

  String _loadHTML(){
    return '''
      <html>
        <body onload="document.f.submit();">
          <form id="f" name="f" method="post" action="http://192.168.1.4:8000/pay">
            <input type="hidden" name="price" value="${widget.price}"/>
            </form>
        </body>
       </html>
    ''' ;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: WebView(
          onPageFinished: (page){
            if(page.contains('/success')){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PaymentSuccess()));
            }
          },
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: Uri.dataFromString(_loadHTML(),mimeType: 'text/html').toString(),
        ),
      ),
    );
  }
}
