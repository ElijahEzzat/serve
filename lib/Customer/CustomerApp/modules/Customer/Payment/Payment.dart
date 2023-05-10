import 'package:flutter/material.dart';

class Payment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
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
                   height: 250.0,
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
                               backgroundImage: AssetImage('assets/images/provider.png'),
                               //foregroundImage: _image == null ? null : FileImage(_image!),
                             ),
                           ),

                           SizedBox(
                             width: 5.0,
                           ),

                           Container(
                             padding: EdgeInsets.all(5.0),
                             width: 180.0,
                             child: Text(
                               'Provider Name',
                               style: TextStyle(
                                 color: Color(0xFFF99718),
                                 fontSize: 16.0,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),
                           ),

                           ElevatedButton(
                             style: ElevatedButton.styleFrom(
                               backgroundColor: Color(0xFFF99718),
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(10.0),
                               ),
                             ),

                             onPressed: (){

                              /* Navigator.push(context,
                                   MaterialPageRoute(builder: (context) => RequestDetails()));*/
                             },

                             child: const Text(
                               'Paying',
                               style: TextStyle(
                                 color: Colors.white,
                                 fontWeight: FontWeight.bold,
                                 fontSize: 16.0,
                               ),
                             ),
                           ),
                         ],
                       ),

                       SizedBox(
                         height: 10.0,
                       ),

                       Row(
                         children: [
                           Text(
                             'Problem Title  ',
                             style: TextStyle(
                               fontSize: 16.0,
                               fontWeight: FontWeight.bold,
                               color: Colors.black45,
                             ),
                           ),
                           Container(
                             height: 40.0,
                             width: 250,
                             padding: EdgeInsets.all(10.0),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 color: Color(0xFFF99718),
                               ),
                               borderRadius: BorderRadius.circular(20.0),
                             ),
                             child: Text(
                               '  ',
                               textAlign: TextAlign.center,
                               style: TextStyle(
                                 fontSize: 14.0,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.black45,
                               ),
                             ),
                           ),
                         ],
                       ),

                       SizedBox(
                         height: 10.0,
                       ),

                       Row(
                         children: [
                           Text(
                             ' Date  ',
                             style: TextStyle(
                               fontSize: 16.0,
                               fontWeight: FontWeight.bold,
                               color: Colors.black45,
                             ),
                           ),
                           Container(
                             height: 40.0,
                             width: 130.0,
                             padding: EdgeInsets.all(10.0),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 color: Color(0xFFF99718),
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

                           Text(
                             '  Time  ',
                             style: TextStyle(
                               fontSize: 16.0,
                               fontWeight: FontWeight.bold,
                               color: Colors.black45,
                             ),
                           ),
                           Container(
                             height: 40.0,
                             width: 130.0,
                             padding: EdgeInsets.all(10.0),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 color: Color(0xFFF99718),
                               ),
                               borderRadius: BorderRadius.circular(20.0),
                             ),
                             child: Text(
                               'Time of service',
                               style: TextStyle(
                                 fontSize: 14.0,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.black45,
                               ),
                             ),
                           ),
                         ],
                       ),

                       SizedBox(
                         height: 10.0,
                       ),

                       Row(
                         children: [
                           Text(
                             'Cost Of Service  ',
                             style: TextStyle(
                               fontSize: 16.0,
                               fontWeight: FontWeight.bold,
                               color: Colors.black45,
                             ),
                           ),
                           Container(
                             height: 40.0,
                             width: 240,
                             padding: EdgeInsets.all(10.0),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 color: Color(0xFFF99718),
                               ),
                               borderRadius: BorderRadius.circular(20.0),
                             ),
                             child: Text(
                               '  ',
                               textAlign: TextAlign.center,
                               style: TextStyle(
                                 fontSize: 14.0,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.black45,
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

     )
   );
  }

}