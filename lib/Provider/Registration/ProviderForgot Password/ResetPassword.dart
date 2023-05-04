import 'package:flutter/material.dart';
import 'package:serve_me/Provider/Registration/ProviderForgot Password/ResetSuccess.dart';

class ResetPassword extends StatefulWidget{

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  var formKey = GlobalKey<FormState>();

  bool secure = true;
  bool confirmSecure = true;

  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();



  bool checkToSubmit(){
    bool submit = passwordController.text.isEmpty
                  ||confirmPasswordController.text.isEmpty ? false : true;

    return submit;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF99718),
        title: Text(
          'Reset Password',
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
                        height: 15.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: TextFormField(
                          obscureText: secure,
                          decoration: InputDecoration(
                            labelText: 'password',
                            labelStyle: TextStyle(color: Colors.grey),
                            prefixIcon: Icon(Icons.lock, color: Color(0xFFF99718),),
                            suffixIcon: IconButton(
                                onPressed: (){
                                  setState(() {
                                    secure = !secure;
                                  });
                                },
                                icon: secure ? Icon(Icons.visibility):Icon(Icons.visibility_off),
                                color: Color(0xFFF99718)),


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

                          controller: passwordController,
                          keyboardType: TextInputType.visiblePassword,

                          onFieldSubmitted: (password){
                            print(password);
                          },

                          validator: (value){
                            if(value!.isEmpty){
                              return 'Please enter your Password';
                            }

                            if(value.length < 8){
                              return 'Enter 8-Digits Password';
                            }

                            return null;
                          },

                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: TextFormField(
                          obscureText: confirmSecure,
                          decoration: InputDecoration(
                            labelText: 'confirm password',
                            labelStyle: TextStyle(color: Colors.grey),
                            prefixIcon: Icon(Icons.lock_open, color: Color(0xFFF99718),),
                            suffixIcon: IconButton(
                                onPressed: (){
                                  setState(() {
                                    confirmSecure = !confirmSecure;
                                  });
                                },
                                icon: confirmSecure ? Icon(Icons.visibility):Icon(Icons.visibility_off),
                                color: Color(0xFFF99718)),


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
                          ),


                          controller: confirmPasswordController,
                          keyboardType: TextInputType.visiblePassword,
                          onFieldSubmitted: (password){
                            print(password);
                          },

                          validator: (value){
                            if(value!.isEmpty){
                              return 'Please enter your Password';
                            }

                            if(value.length < 8){
                              return 'Enter 8-Digits Password';
                            }

                            if(confirmPasswordController.text != passwordController.text ){
                              return 'Please Re-Enter Password';
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


                        onPressed:
                            (){
                          if(formKey.currentState!.validate()) {
                            print(passwordController.text);
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => ResetPasswordSuccess()));
                          }
                        } ,

                        child: const Text(
                          'Reset',
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