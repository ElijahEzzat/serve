import 'package:flutter/material.dart';

class ScheduledRequestDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF99718),
        title: Text(
          'Request Details',
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
      ),

      body: Column(
        children: [
          Container(
            height: 200.0,
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
                            backgroundImage: AssetImage('assets/images/customer.jpg'),
                            //foregroundImage: _image == null ? null : FileImage(_image!),
                          ),
                        ],
                      ),

                      Text(
                        'Customer Name',
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
            height: 80.0,
            width: 350.0,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFF99718),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text(
              'Problem description',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.black45,
              ),
            ),
          ),

          SizedBox(
            height: 10.0,
          ),


          Container(
            height: 50.0,
            width: 350.0,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFF99718),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text(
              'date of service',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.black45,
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
                labelText: 'Location',
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
            height: 80.0,
            width: 350.0,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFF99718),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text(
              'Instructions',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.black45,
              ),
            ),
          ),

          SizedBox(
            height: 10.0,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF1DBD1D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),

                onPressed: (){

                  /*Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => ProviderHomeLayout()));*/
                },

                child: const Text(
                  'Finish',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
              SizedBox(
                width: 50.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFF85E2F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),

                onPressed: (){

                  /*Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => ProviderHomeLayout()));*/
                },

                child: const Text(
                  'Cancel',
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