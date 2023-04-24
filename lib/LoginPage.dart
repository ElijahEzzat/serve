import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:serve_me/AccountType.dart';
import 'package:serve_me/Customer/CustomerApp/layout/Customer/Home_Layout/HomeScreen.dart';
import 'package:serve_me/Forgot%20Password/ForgetPassword.dart';
import 'package:serve_me/Provider/Screens/ProviderHomeLayout.dart';

class LoginPage extends StatefulWidget{

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

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
            'Log In',
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
                              image:AssetImage ('assets/images/logImage.jpg'),
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 100,
                          ),
                        ],
                      ),
                      Positioned(
                        top: 200,
                        left: 130,
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
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),

                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Checkbox(

                                activeColor: Color(0xFFF99718),
                                value: CustomerChecked,
                                onChanged: (newBool){
                                  setState(() {
                                    CustomerChecked = newBool;
                                    ProviderChecked = !newBool!;
                                    print(ProviderChecked);
                                  });
                                }
                            ),

                            const Text(
                              'Customer',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),

                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: 15,
                      ),

                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Checkbox(

                                activeColor: Color(0xFFF99718),
                                value: ProviderChecked,
                                onChanged: (newBool){
                                  setState(() {
                                    ProviderChecked = newBool;
                                    CustomerChecked = !newBool!;

                                  });
                                }
                            ),

                            const Text(
                              'Service Provider',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),

                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
                      if(ProviderChecked == true){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ProviderHomeLayout()));
                      }
                      else{
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      }


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

                SizedBox(
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ForgotPassword()));
                      },
                      child:const Text(
                        'Forgot Password???',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFFF99718),
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                        'Don\'t have account?',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),

                    ),
                    TextButton(
                        onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => AccountType()));
                          },
                        child:const Text(
                          'SignUp',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFFF99718),
                          ),
                        ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

