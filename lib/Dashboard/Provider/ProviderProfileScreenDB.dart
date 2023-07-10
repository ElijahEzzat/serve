import 'package:flutter/material.dart';
import 'ProviderReportsScreenDB.dart';
import 'ProviderReviewScreenDB.dart';

class ProviderProfileScreenDB extends StatefulWidget{
  @override
  State<ProviderProfileScreenDB> createState() => _ProviderProfileScreenDBState();
}

class _ProviderProfileScreenDBState extends State<ProviderProfileScreenDB> {

  var str = "Activate";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF99718),
        title: Text(
          'About Service Provider',
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
                            backgroundImage: AssetImage('assets/images/provider.png'),

                          ),

                        ],
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
                    enabled: false,

                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                  ),
                  //controller: emailController,
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

                    enabled: false,

                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Governorate',
                    labelStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.location_pin, color: Color(0xFFF99718),),

                    enabled: false,

                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'District',
                    labelStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.location_city, color: Color(0xFFF99718),),

                    enabled: false,

                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Service',
                    labelStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.home_repair_service, color: Color(0xFFF99718),),

                    enabled: false,

                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: TextFormField(

                  decoration: const InputDecoration(

                    labelText: 'Description of Service',
                    labelStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.edit, color: Color(0xFFF99718),),

                    enabled: false,

                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  width: 400,
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xFFF99718),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Image(
                    image: AssetImage('assets/images/IDFrontSide.jpg'),
                  ),
                ),
              ),

              SizedBox(
                height: 15.0,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  width: 400,
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFF99718),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Image(
                    image: AssetImage('assets/images/IDBackSide.jpg'),
                  ),
                ),
              ),

              SizedBox(
                height: 15.0,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFE9B405),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),

                    onPressed: (){

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ProviderReviewScreenDB()));
                    },

                    child: const Text(
                      'Reviews',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 20,
                  ),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF85E2F),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),

                    onPressed: (){

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ProviderReportsScreenDB()));
                    },

                    child: const Text(
                      'Reports',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFF99718),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),

                onPressed: (){
                  setState(() {
                    if(str == 'Activate'){
                      str='Activated';
                    }
                  });
                },

                child: Text(
                  '$str',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
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