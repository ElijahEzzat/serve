import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProviderLogSuccess extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: ()async {
        SystemNavigator.pop();
        return Future.value(false);
        },
      child: Scaffold(
        body:
        SafeArea(
          child: Center(
            child: Column(
              children:
              [
                SizedBox(
                  height: 180.0,
                ),
                Image(
                  image: AssetImage('assets/images/check.png'),
                  height: 150.0,
                  width: 100.0,
                ),

                Text(
                  'Your Account created Successfully',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 24.0,
                  ),

                ),

                SizedBox(
                  height: 10,
                ),

                Container(
                  width: 350,
                  child: Text(
                    'Thanks to use our application.\n We will contact with you.',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Color(0xFFF99718),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                /*SizedBox(
                  height: 30.0,
                ),
                TextButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProviderLoginPage()));
                  },
                  child:const Text(
                    'Login Now',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Color(0xFFF99718),
                    ),
                  ),
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
