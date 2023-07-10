import 'package:flutter/material.dart';
import 'package:serve_me/Customer/Registration/CustomerLoginPage.dart';
import 'package:serve_me/Customer/Registration/OTP.dart';

class CustomerDBSignupPage extends StatefulWidget {

  @override
  State<CustomerDBSignupPage> createState() => _CustomerDBSignupPageState();
}

class _CustomerDBSignupPageState extends State<CustomerDBSignupPage> {

  var name, e_mail, phone;

  bool? isChecked = false;
  bool secure = true;
  bool confirmSecure = true;

  String? _selectedGovernorate;
  String? _selectedCity;

  final List<String> _Governorate = [
    'Cairo',
    'Giza',
  ];

  final Map<String, List<String>> _city = {
    'Cairo': ['El-Ataba','El-Gezera','El-Zayton','Rod El-farag','Shobra', 'Nasr city'],
    'Giza': ['Bolak','El-Dokki','El-Harm','El-Maadi','El-Marg','El-Mohandeseen','El-Monib','El-Moski','El-Warrak',],
  };


  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  var formKey = GlobalKey<FormState>();


  bool checkToSubmit(){
    bool submit = nameController.text.isEmpty||emailController.text.isEmpty
                  ||phoneController.text.isEmpty||passwordController.text.isEmpty
                  ||confirmPasswordController.text.isEmpty
                  ||_selectedGovernorate==null||_selectedCity==null||isChecked==false ? false : true;

    return submit;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF99718),
        title: Text(
          'Sign Up',
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
      ),
      body:
      SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: TextFormField(

                  decoration: const InputDecoration(
                    labelText: 'Name',
                    labelStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.person, color: Color(0xFFF99718),),

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

                  controller: nameController,
                  keyboardType: TextInputType.text,

                  onFieldSubmitted: (name){
                    print(name);
                  },

                  onChanged: (String value){
                    print(value);
                  },

                  onSaved: (_name){
                    name = _name;
                  },

                  validator: (value){
                    if(value!.isEmpty){
                      return 'Please your Name';
                    }
                    if(value == ' '){
                      return 'Please your Name';
                    }
                    if(!RegExp("^[a-zA-Z]").hasMatch(value)){
                      return 'Please enter valid Name';
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
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,

                  onFieldSubmitted: (email){
                    print(email);
                  },

                  onChanged: (String value){
                    print(value);
                  },

                  onSaved: (_e_mail){
                    e_mail = _e_mail;
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
                  decoration: const InputDecoration(
                    labelText: 'Phone Number',
                    labelStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.phone, color: Color(0xFFF99718),),
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
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  onFieldSubmitted: (phone){
                    print(phone);
                  },

                  maxLength: 11,
                  onChanged: (String value){
                    print(value);
                  },

                  validator: (value){
                    if(value!.isEmpty){
                      return 'Please enter phone number';
                    }
                    if(!RegExp("^[0]+[1]+[0,1,2,5]+[0-9]").hasMatch(value)){
                      return 'Please enter valid number';
                    }
                    return null;
                  },

                  onSaved: (_phone){
                    phone = _phone;
                  },

                ),
              ),
              SizedBox(
                height: 15.0,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: DropdownButtonFormField(
                  icon: Icon(Icons.arrow_drop_down_circle, color: Color(0xFFF99718),),

                  decoration: InputDecoration(
                    labelText: 'Governorate',
                    labelStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.location_pin, color: Color(0xFFF99718),),

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

                  value: _selectedGovernorate,
                  items: _Governorate
                      .map((e) => DropdownMenuItem(
                    child: Text('$e'),
                    value: e,
                  )).toList(),

                  onChanged: (val){
                    setState(() {
                      _selectedGovernorate = val;
                      _selectedCity = null;
                    });
                  },




                  validator: (value){
                    if(_selectedGovernorate == null){
                      return 'Please choose your Governorate';
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
                child: DropdownButtonFormField(
                  icon: Icon(Icons.arrow_drop_down_circle, color: Color(0xFFF99718),),

                  decoration: const InputDecoration(
                    labelText: 'District',
                    labelStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.location_city, color: Color(0xFFF99718),),

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

                  value: _selectedCity,
                  items: _city[_selectedGovernorate]?.map((e) => DropdownMenuItem(
                    child: Text('$e'),
                    value: e,
                  )).toList(),

                  onChanged: (val){
                    setState(() {
                      _selectedCity = val!;
                    });
                  },



                  validator: (value){
                    if(_selectedCity == null){
                      return 'Please choose your district';
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: TextFormField(
                  obscureText: confirmSecure,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    labelStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.lock_open, color: Color(0xFFF99718),),
                    suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            confirmSecure = !confirmSecure;
                          });
                        },
                        icon: confirmSecure ? Icon(Icons.visibility):Icon(Icons.visibility_off),
                        color: Color(0xFFF99718)
                    ),


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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    child: Text (
                      'Accept our Terms & Privacy',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),

                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Terms & Privacy'),
                            content:
                            SingleChildScrollView(
                              child: Text(
                                'A user account is a key component of an application that provides communication between clients and service providers. It allows users to access the application\'s features and services, and provides a way for the application to track and manage user information and activity. Here are some important aspects of a user account:\nRegistration: The process of creating a user account. Typically, users will need to provide some basic personal information such as their name, email address, and password.\nLogin: The process of accessing the user account by entering the registered email address and password. This ensures that only the authorized user is able to access their account.\nProfile: The user\'s profile contains information such as their name, contact details, and other preferences. Users can typically edit their profile information at any time.\nSecurity: User accounts are often protected with security measures such as two-factor authentication and password reset options. This helps to ensure that the user\'s personal information and account are secure.\nActivity tracking: The application may track the user\'s activity within the application, such as service requests, communication with service providers, and payments made. This information is often used to improve the user experience and provide better services.\nPrivacy: The application should have a privacy policy that outlines how the user\'s personal information is collected, used, and protected. Users should have control over their personal information and be able to opt-out of certain features or services if they choose to do so.\nOverall, a user account is a critical component of an application that provides communication between clients and service providers. It enables users to access the application\'s features and services, and provides a way for the application to manage user information and activity.',
                              ),
                            ),
                            actions: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFF99718),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),

                                child: Text('Close'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),

                  Checkbox(
                      activeColor: Color(0xFFF99718),
                      value: isChecked,
                      onChanged: (newBool){
                        setState(() {
                          isChecked = newBool;
                        });
                      }
                  ),
                ],
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFF99718),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),


                onPressed: checkToSubmit() ?
                    (){
                    if(formKey.currentState!.validate()) {
                      print(passwordController.text);
                      Navigator.pop(context);
                    }

                } : null,

                child: const Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),

            ],
          ),
        ),
      ),
    ) ;
  }
}
