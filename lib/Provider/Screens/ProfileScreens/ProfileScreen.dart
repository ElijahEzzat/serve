import 'package:flutter/material.dart';
import 'package:serve_me/Provider/Screens/ProfileScreens/ResetPassword.dart';
import 'package:serve_me/Provider/Screens/ProfileScreens/EditProfile.dart';

class ProfileScreen extends StatefulWidget{

  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                        //foregroundImage: _image == null ? null : FileImage(_image!),
                      ),
                      Text(
                        'Provider Name',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],

              ),
            ),
          ),

          SizedBox(
            height: 50.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextFormField(
              enabled: false,
              decoration: const InputDecoration(
                labelText: 'Name',
                labelStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.person, color: Color(0xFFF99718),),
                disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                ),
              ),

            ),
          ),

          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextFormField(
              enabled: false,
              decoration: const InputDecoration(
                labelText: 'Phone Number',
                labelStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.phone, color: Color(0xFFF99718),),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                ),
              ),

            ),
          ),

          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextFormField(
              enabled: false,
              decoration: const InputDecoration(
                labelText: 'City',
                labelStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.location_city, color: Color(0xFFF99718),),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                ),
              ),

            ),
          ),

          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextFormField(
              enabled: false,
              decoration: const InputDecoration(
                labelText: 'District',
                labelStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.location_pin, color: Color(0xFFF99718),),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                ),
              ),

            ),
          ),

          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFF99718),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),

                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EditProfile()));
                },

                child: const Text(
                  'Edit Profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),

              SizedBox(
                width: 20.0,
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFF99718),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),

                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ResetPassword()));
                },

                child: const Text(
                  'Reset Password',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}