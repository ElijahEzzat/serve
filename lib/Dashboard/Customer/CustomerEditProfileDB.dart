import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CustomerEditProfileDB extends StatefulWidget{
  @override
  State<CustomerEditProfileDB> createState() => _CustomerEditProfileDBState();
}

class _CustomerEditProfileDBState extends State<CustomerEditProfileDB> {

  var name, e_mail, phone;
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  String? _selectedGovernorate;
  String? _selectedCity;

  bool secure = true;
  bool confirmSecure = true;



  final List<String> _Governorate = [
    'Cairo',
    'Giza',
  ];

  final Map<String, List<String>> _city = {
    'Cairo': ['El-Ataba','El-Gezera','El-Zayton','Rod El-farag','Shobra', 'Nasr city'],
    'Giza': ['Bolak','El-Dokki','El-Harm','El-Maadi','El-Marg','El-Mohandeseen','El-Monib','El-Moski','El-Warrak',],
  };

  File? _image ;
  Future getImage () async{
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);

    if(image == null)
      return ;

    final imageTemp = File(image.path);

    setState(() {
      this._image = imageTemp;
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF99718),
        title: Text(
          'Edit Profile',
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: Material(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 180.0,
                color: Color(0xFFF99718),
                child: Center(
                  child: Stack(
                    children:
                    [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 80.0,
                            backgroundColor: Color(0xFFF99718),
                            backgroundImage: AssetImage('assets/images/customer.jpg'),
                            foregroundImage: _image == null ? null : FileImage(_image!),

                          ),

                        ],
                      ),


                      Positioned(
                        left: 240.0,
                        top: 110.0,
                        child: IconButton(
                          onPressed: (){
                            getImage();
                          },
                          icon: Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.edit,
                              color: Color(0xFFF99718),
                            ),
                          ),
                        ),
                      ),

                    ],

                  ),
                ),
              ),

              SizedBox(
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

                  ),
                  controller: nameController,
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (email){
                    print(email);
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

                  ),
                  //controller: emailController,
                  keyboardType: TextInputType.phone,
                  onFieldSubmitted: (email){
                    print(email);
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

                  ),

                  value: _selectedGovernorate,
                  items: _Governorate.map((item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),

                  onChanged: (val){
                    setState(() {
                      _selectedGovernorate = val;
                      _selectedCity = null;
                    });
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

                  ),

                  value: _selectedCity,
                  items: _city[_selectedGovernorate]?.map((item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),

                  onChanged: (val){
                    setState(() {
                      _selectedCity = val;
                    });
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
                  Navigator.pop(context);
                },

                child: const Text(
                  'Save',
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
    );
  }
}