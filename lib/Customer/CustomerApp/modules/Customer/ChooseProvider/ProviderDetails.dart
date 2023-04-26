import 'package:flutter/material.dart';
import 'package:serve_me/Customer/CustomerApp/modules/Customer/FinishBooking/FinishBookingScreen.dart';


class ProviderDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF99718),
        title: Text(
          'Provider Profile',
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
      ),

      body: Column(
        children: [
          Container(
            height: 240.0,
            color: Color(0xFFF99718),
            child: Center(
              child: Stack(
                children:
                [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 80.0,
                            backgroundColor: Color(0xFFF99718),
                            backgroundImage: AssetImage('assets/images/provider.png'),
                            //foregroundImage: _image == null ? null : FileImage(_image!),
                          ),
                        ],
                      ),

                      Text(
                        'Provider Name',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
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

          Container(
            width: 350,
            child: TextFormField(
              enabled: false,
              decoration: const InputDecoration(
                labelText: 'Phone Number',
                labelStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.phone, color: Color(0xFFF99718),),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              ),

            ),
          ),

          SizedBox(
            height: 10.0,
          ),

          Container(
            width: 350,
            child: TextFormField(
              enabled: false,
              decoration: const InputDecoration(
                labelText: 'Service',
                labelStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.home_repair_service, color: Color(0xFFF99718),),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              ),

            ),
          ),

          SizedBox(
            height: 10.0,
          ),

          Container(
            width: 350,
            child: TextFormField(
              enabled: false,
              decoration: const InputDecoration(
                labelText: 'Governorate',
                labelStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.location_pin, color: Color(0xFFF99718),),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              ),

            ),
          ),

          SizedBox(
            height: 10.0,
          ),

          Container(
            width: 350,
            child: TextFormField(
              enabled: false,
              decoration: const InputDecoration(
                labelText: 'District',
                labelStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.location_city, color: Color(0xFFF99718),),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              ),

            ),
          ),

          SizedBox(
            height: 10.0,
          ),



          SizedBox(
            height: 10.0,
          ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFF99718),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),

            onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context) => const FinishBooking()),
              );
            },

            child: const Text(
              'Book',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),


        ],
      ),
    );
  }
  
}