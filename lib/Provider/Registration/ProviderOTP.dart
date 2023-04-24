import 'package:flutter/material.dart';
import 'package:serve_me/Provider/Registration/ProviderCreateProfile.dart';


class ProviderOTP extends StatefulWidget {
  @override
  State<ProviderOTP> createState() => _ProviderOTPState();
}

class _ProviderOTPState extends State<ProviderOTP> {
  var formKey = GlobalKey<FormState>();

  var OTPController =TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Material(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image(
                        image: AssetImage('assets/images/OTP.png'),
                        height: 220.0,
                        width: 200.0,


                    ),
                  ),

                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Verify OTP',
                    style: TextStyle(
                      color: Color(0xFFF99718),
                      fontSize: 30.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Please Enter 4 digits code\n\t\t\t Sent to yourr phone',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                    ),
                  ),

                  SizedBox(
                    height: 20.0,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100.0),
                    child: TextFormField(
                      maxLength: 4,
                      decoration: const InputDecoration(
                        hintText:  'Enter Code',
                        labelStyle: TextStyle(color: Colors.grey),
                        counterText: '',

                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                          borderRadius:
                          BorderRadius.only(
                            topRight: Radius.circular(30.0),
                            topLeft: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                          ),
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                          borderRadius:
                          BorderRadius.only(
                            topRight: Radius.circular(30.0),
                            topLeft: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                          ),
                        ),

                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFFF0000), width: 2),
                          borderRadius:
                          BorderRadius.only(
                            topRight: Radius.circular(30.0),
                            topLeft: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                          ),
                        ),

                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFFF0000), width: 2),
                          borderRadius:
                          BorderRadius.only(
                            topRight: Radius.circular(30.0),
                            topLeft: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                          ),
                        ),
                      ),

                      controller: OTPController,
                      keyboardType: TextInputType.number,

                      onFieldSubmitted: (otp){
                        print(otp);
                      },

                      onChanged: (String value){
                        print(value);
                      },

                      validator: (value){
                        if(value!.isEmpty){
                          return 'Enter OTP code';
                        }
                        if(!RegExp("^[0-9]").hasMatch(value)){
                          return 'Please enter valid OTP';
                        }
                        if(value.length < 4){
                          return 'Please enter valid OTP';
                        }
                        return null;
                      },

                    ),
                  ),

                  SizedBox(
                    height: 20.0,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t receive your code?',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),

                      ),
                      TextButton(
                        onPressed: (){
                          /*Navigator.push(context,
                              MaterialPageRoute(builder: (context) => SignupPage()));*/
                        },
                        child:const Text(
                          'Resend',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFFF99718),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 20.0,
                  ),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF99718),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),


                    onPressed:
                        (){
                      if(formKey.currentState!.validate()) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ProviderCreateProfile()));
                      }
                    },

                    child: const Text(
                      'Verify',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
