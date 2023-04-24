import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditProfile extends StatefulWidget{
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  var selectedGovernorate;
  var selectedCity;

  List districts =['Bolak','El-Dokki','El-Haram','El-Maadi','El-Marg','El-Mohandeseen','El-Monib','El-Moski','El-Warrak','Nasr city','Shobra'];


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
                height: 200.0,
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
                            backgroundImage: AssetImage('assets/images/provider.png'),
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
                  //controller: emailController,
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

                  items: ['Cairo','Giza']
                      .map((e) => DropdownMenuItem(
                    child: Text('$e'),
                    value: e,
                  )).toList(),

                  onChanged: (val){
                    setState(() {
                      selectedGovernorate = val!;
                    });
                  },

                  value: selectedGovernorate,
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
                    labelText: 'City',
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

                  items: districts.map((e) => DropdownMenuItem(
                    child: Text('$e'),
                    value: e,
                  )).toList(),

                  onChanged: (val){
                    setState(() {
                      selectedCity = val!;
                    });
                  },

                  value: selectedCity,
                ),
              ),

              SizedBox(
                height: 5.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFF99718),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),

                onPressed: (){
                  /*Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProviderOTP()));*/
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