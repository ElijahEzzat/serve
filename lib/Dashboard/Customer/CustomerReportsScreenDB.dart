import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomerReportsScreenDB extends StatefulWidget{
  @override
  State<CustomerReportsScreenDB> createState() => _CustomerReportsScreenDB();
}

class _CustomerReportsScreenDB extends State<CustomerReportsScreenDB> {
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
                      height: 220.0,
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
                                radius: 37.5,
                                backgroundColor: Color(0xFFF99718),
                                child: CircleAvatar(
                                  radius: 35.0,
                                  backgroundImage: AssetImage('assets/images/provider.png'),
                                  //foregroundImage: _image == null ? null : FileImage(_image!),
                                ),
                              ),

                              SizedBox(
                                width: 10,
                              ),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Reporter Name',
                                    style: TextStyle(
                                      color: Color(0xFFF99718),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          SizedBox(
                            height: 10.0,
                          ),

                          Container(
                            height: 100.0,
                            width: 350.0,
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFF99718),
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Text(
                              'Report Contents',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black45,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              );
          },

        ),
      ),
    );
  }
}