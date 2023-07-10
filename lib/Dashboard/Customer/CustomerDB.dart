import 'package:flutter/material.dart';
import 'package:serve_me/Dashboard/Customer/CustomerDBSignUp.dart';
import 'package:serve_me/Dashboard/Customer/CustomerEditProfileDB.dart';
import 'package:serve_me/Dashboard/Customer/CustomerProfileScreenDB.dart';

class CustomerDBScreen extends StatefulWidget{
  @override
  State<CustomerDBScreen> createState() => _CustomerDBScreenState();
}

class _CustomerDBScreenState extends State<CustomerDBScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, i) {
            return
              Column(
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 155.0,
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFF99718),
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),

                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [

                              CircleAvatar(
                                radius: 35.5,
                                backgroundColor: Color(0xFFF99718),
                                child: CircleAvatar(
                                  radius: 33.0,
                                  backgroundImage: AssetImage('assets/images/customer.jpg'),
                                  //foregroundImage: _image == null ? null : FileImage(_image!),
                                ),
                              ),

                              SizedBox(
                                width: 10.0,
                              ),

                              Container(
                                padding: EdgeInsets.all(5.0),
                                width: 180.0,
                                child: Text(
                                  'Client Name',
                                  style: TextStyle(
                                    color: Color(0xFFF99718),
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                            ],
                          ),

                          SizedBox(
                            height: 10.0,
                          ),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFE9B405),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),

                                onPressed: (){

                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => CustomerEditProfileDB()));
                                },

                                child: const Text(
                                  'Edit',
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
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),

                                onPressed: (){

                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => CustomerProfileScreenDB()));
                                },

                                child: const Text(
                                  'Details',
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
                                  backgroundColor: Color(0xFFF85E2F),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),

                                onPressed: (){
                                    Navigator.pop(context);
                                  },

                                child: const Text(
                                  'Delete',
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
                    ),
                  ),
                ],
              );
          },

        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CustomerDBSignupPage()));
          },

          backgroundColor: Color(0xFFF99718),
          child: Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}