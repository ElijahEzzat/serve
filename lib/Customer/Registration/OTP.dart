import 'package:flutter/material.dart';
import 'package:serve_me/Customer/Registration/CustomerLogSuccess.dart';

class OTP extends StatefulWidget {

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  var otpController = TextEditingController();

  var otp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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

                    controller: otpController,
                    keyboardType: TextInputType.number,

                    onFieldSubmitted: (otp){
                      print(otp);
                    },

                    onChanged: (String value){
                      print(value);
                    },

                    validator: (value){
                      if(value!.isEmpty){
                        return 'Please enter 4-Digits code';
                      }
                      if(!RegExp("^[0-9]").hasMatch(value)){
                        return 'Please enter valid OTP';
                      }
                      if(otpController.text.length<4){
                        return 'Please enter valid OTP';
                      }
                      return null;
                    },

                    onSaved: (_otp){
                      otp = _otp;
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

                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CustomerLogSuccess()));
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
    );
  }
}
