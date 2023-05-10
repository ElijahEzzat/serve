import 'package:flutter/material.dart';

class PaymentNotification extends StatefulWidget{
  @override
  State<PaymentNotification> createState() => _PaymentNotification();
}

class _PaymentNotification extends State<PaymentNotification> {
  @override
  Widget build(BuildContext context) {
    double cost=0.0;
    String serviceTitle='-----------------';
    return ListView.builder(
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
                  height: 100.0,
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
                              radius: 34.0,
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage('assets/images/logo.png'),
                              //foregroundImage: _image == null ? null : FileImage(_image!),
                            ),
                          ),

                          SizedBox(
                            width: 5.0,
                          ),

                          Container(
                            padding: EdgeInsets.all(5.0),
                            width: 270.0,
                            child: Text(
                              'You have received $cost EG for the service its title $serviceTitle.',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
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

    );
  }
}