import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:serve_me/Dashboard/Payments/PaymentDBScreen.dart';
import 'package:serve_me/Dashboard/Provider/ProviderDB.dart';
import 'package:serve_me/Dashboard/Services/ServicesDB.dart';

import 'Customer/CustomerDB.dart';

class DashboardHomeScreen extends StatelessWidget {
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
            'Welcome To Dashboard',
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
              height: 100,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Material(
                    color: Color(0xFFF99718),
                    elevation: 10,
                    borderRadius: BorderRadius.circular(20.0),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CustomerDBScreen()));
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
                            'Client',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFFffffff)),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  width: 50,
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
                        MaterialPageRoute(builder: (context) => ProviderDBScreen()));
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
                            'Provider',
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

            SizedBox(
              height: 60,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Material(
                    color: Color(0xFFF99718),
                    elevation: 10,
                    borderRadius: BorderRadius.circular(20.0),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ServicesDBScreen()));
                      },
                      child:
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(image: AssetImage('assets/images/Services.png'),
                            height: 150,
                            width: 150,

                          ),
                          SizedBox(height: 5),
                          Text(
                            'Services',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFFffffff)),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  width: 50,
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
                        MaterialPageRoute(builder: (context) => PaymentDBScreen()));
                      },
                      child:
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Ink.image(image: AssetImage('assets/images/Payments.png'),
                            height: 150,
                            width: 150,

                          ),
                          SizedBox(height: 5),
                          Text(
                            'Payments',
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

          ],
        ),
      ),
    )
    ;
  }
}