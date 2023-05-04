import 'package:flutter/material.dart';
import 'package:serve_me/Customer/Registration/CustomerLoginPage.dart';

class ResetPasswordSuccess extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                'Password reset Successfully',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 24.0,
                ),

              ),
              SizedBox(
                height: 30.0,
              ),
              TextButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CustomerLoginPage()));
                },
                child:const Text(
                  'Login Now',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Color(0xFFF99718),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
