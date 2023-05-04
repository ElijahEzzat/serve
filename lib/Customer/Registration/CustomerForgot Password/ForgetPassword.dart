import 'package:flutter/material.dart';
import 'package:serve_me/Customer/Registration/CustomerForgot Password/OTP.dart';

class ForgotPassword extends StatefulWidget{

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  var formKey = GlobalKey<FormState>();

  var emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF99718),
        title: Text(
          'Forgot Password',
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: formKey,
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFF99718),
          ),

          width: double.infinity,

          child: Column(

            children: [

              Expanded(
                flex: 2,
                child: Container(
                  child: Center(
                    child: Stack(
                        children:
                        [
                          Positioned(
                            top: 50,
                            left: 130,
                            child: Material(
                              borderRadius:
                              BorderRadius.all(Radius.circular(20.0)),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Image(
                                image:AssetImage ('assets/images/forgot-pass-lock.png'),
                                height: 170,
                                width: 150,
                              ),
                            ),
                          ),


                        ]
                    ),
                  ),
                ),
              ),

              Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                  ),
                  width: double.infinity,

                  child: Column(
                    children: [
                      SizedBox(
                        height: 80.0,
                      ),
                      Text(
                          "Please Enter Your E-mail\nTo receive a verification code",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18.0,
                        ),
                      ),

                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Email Address',
                            labelStyle: TextStyle(color: Colors.grey),
                            prefixIcon: Icon(Icons.email, color: Color(0xFFF99718),),

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
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,

                          onFieldSubmitted: (email){
                            print(email);
                          },

                          onChanged: (String value){
                            print(value);
                          },

                          validator: (value){
                            if(value!.isEmpty){
                              return 'Please enter E-mail address';
                            }
                            if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                              return 'Please enter valid E-mail';
                            }
                            return null;
                          },

                        ),
                      ),

                      SizedBox(
                        height: 15.0,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFF99718),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),

                        onPressed: (){
                          if(formKey.currentState!.validate()){
                            print(emailController.text);
                          }

                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => OTP()));
                        },

                        child: const Text(
                          'Next',
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

            ],
          ),


        ),
      ),
    );
  }
}