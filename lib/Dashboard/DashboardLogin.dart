import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:serve_me/Provider/Registration/ProviderForgot Password/ForgetPassword.dart';
import 'package:serve_me/Provider/Registration/ProviderSignUp.dart';
import 'package:serve_me/Provider/Screens/ProviderHomeLayout.dart';

import 'DashboardHomeScreen.dart';

class DashboardLoginPage extends StatefulWidget{

  @override
  State<DashboardLoginPage> createState() => _DashboardLoginPageState();
}

class _DashboardLoginPageState extends State<DashboardLoginPage> {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool secure = true;

  bool? CustomerChecked = false;
  bool? ProviderChecked = false;

  var formKey = GlobalKey<FormState>();

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
            'Admin SignIn',
            style: TextStyle(fontSize: 24),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body:
        SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Center(
                  child: Stack(
                      children:
                      [
                        Column(
                          children: [
                            Image(
                              image:AssetImage ('assets/images/Admin.png'),
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: 120,
                            ),
                          ],
                        ),
                        Positioned(
                          top: 180,
                          left: 140,
                          child: Material(
                            borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(75), topRight: Radius.circular(75)),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Image(
                              image:AssetImage ('assets/images/logo.png'),
                              height: 170,
                              width: 150,
                            ),
                          ),
                        ),

                      ]
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Admin Email',
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


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextFormField(
                    obscureText: secure,
                    decoration: InputDecoration(
                      labelText: 'Password',
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
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFF99718),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),

                  onPressed: (){
                    if(formKey.currentState!.validate()){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DashboardHomeScreen()));
                    }
                  },

                  child: const Text(
                    'Login',
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

