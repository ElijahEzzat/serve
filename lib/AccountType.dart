import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:serve_me/Customer/Registration/CustomerLoginPage.dart';
import 'package:serve_me/Provider/Registration/ProviderLoginPage.dart';

class AccountType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async {
        SystemNavigator.pop();
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFF99718),
          title: Text(
            'Serve Me',
            style: TextStyle(fontSize: 24),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body:
            Column(
              children:
              [
                SizedBox(
                  height: 40,
                ),

                Text(
                  'Choose Your Account',
                  style: (TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color(0xFF707070))),
                ),

                SizedBox(
                  height: 50,
                ),

                Center(
                  child: Material(
                    color: Color(0xFFF99718),
                    elevation: 10,
                    borderRadius: BorderRadius.circular(20.0),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CustomerLoginPage()));
                      },
                      child:
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Ink.image(image: AssetImage('assets/images/customer.jpg'),
                              height: 150,
                              width: 150,

                            ),
                            SizedBox(height: 5),
                            Text(
                                'Customer Account',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFFffffff)),
                              ),
                            SizedBox(height: 5),
                          ],
                        ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 50,
                ),

                Center(
                  child: Material(
                    color: Color(0xFFF99718),
                    elevation: 10,
                    borderRadius: BorderRadius.circular(20.0),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ProviderLoginPage()));
                      },
                      child:
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(image: AssetImage('assets/images/provider.png'),
                            height: 150,
                            width: 150,

                          ),
                          SizedBox(height: 5),
                          Text(
                            'Provider Account',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFFffffff)),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
        ),
    )
    ;
  }
}