import 'package:flutter/material.dart';
import 'package:serve_me/Customer/CustomerApp/modules/Customer/Payment/PaymentScreen.dart';

class Payment extends StatefulWidget{

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  //final _formKey = GlobalKey<FormState>();
  var costController = TextEditingController();

  int price=8;

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

                             onPressed: () {
                               /*showDialog(
                                 context: context,
                                 builder: (BuildContext context) {
                                   return Form(
                                     key: _formKey,
                                     child: AlertDialog(
                                       title: Text('Cost Of Service'),
                                       content:
                                       SingleChildScrollView(
                                         child: Column(
                                           children: [
                                             Column(
                                               children: [

                                                 TextFormField(
                                                   decoration: const InputDecoration(
                                                     labelText: 'Cost Of Service',
                                                     labelStyle: TextStyle(color: Colors.grey),
                                                     prefixIcon: Icon(Icons.money, color: Color(0xFFF99718),),

                                                     enabledBorder: OutlineInputBorder(
                                                         borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                                                         borderRadius: BorderRadius.all(Radius.circular(30))
                                                     ),

                                                     focusedBorder: OutlineInputBorder(
                                                         borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                                                         borderRadius: BorderRadius.all(Radius.circular(30))
                                                     ),

                                                     errorBorder: OutlineInputBorder(
                                                         borderSide: BorderSide(color: Color(0xFFFF0000), width: 2),
                                                         borderRadius: BorderRadius.all(Radius.circular(30))
                                                     ),

                                                     focusedErrorBorder: OutlineInputBorder(
                                                         borderSide: BorderSide(color: Color(0xFFFF0000), width: 2),
                                                         borderRadius: BorderRadius.all(Radius.circular(30))
                                                     ),

                                                   ),
                                                   controller: costController,
                                                   keyboardType: TextInputType.number,

                                                   onFieldSubmitted: (value){
                                                     cost = double.parse(value);
                                                     print(value);
                                                   },

                                                   onChanged: (String value){
                                                     print(value);
                                                   },


                                                   validator: (value){
                                                     if(value!.isEmpty){
                                                       return 'Please enter cost';
                                                     }
                                                     if(value == ' '){
                                                       return 'Please enter cost';
                                                     }
                                                     if(!RegExp("^[0-9]").hasMatch(value)){
                                                       return 'Please enter valid cost';
                                                     }
                                                     return null;
                                                   },

                                                 ),
                                               ],
                                             ),
                                             SizedBox(
                                               height: 5,
                                             ),
                                             ElevatedButton(
                                               style: ElevatedButton.styleFrom(
                                                 backgroundColor: Color(0xFFF99718),
                                                 shape: RoundedRectangleBorder(
                                                   borderRadius: BorderRadius.circular(20.0),
                                                 ),
                                               ),

                                               child: Text(
                                                 'Pay',
                                                 style: TextStyle(
                                                   fontSize: 20,
                                                 ),
                                               ),

                                               onPressed: () {
                                                 if (_formKey.currentState!.validate()){
                                                   Navigator.push(context,
                                                          MaterialPageRoute(builder: (context) => PaymentScreen(cost)));
                                                 }
                                               },
                                             ),
                                           ],

                                         ),
                                       ),
                                     ),
                                   );
                                 },
                               );*/

                               Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => PaymentScreen(price)));
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
                             width: 125.0,
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
                             width: 125.0,
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
                             width: 230,
                             padding: EdgeInsets.all(10.0),
                             decoration: BoxDecoration(
                               border: Border.all(
                                 color: Color(0xFFF99718),
                               ),
                               borderRadius: BorderRadius.circular(20.0),
                             ),
                             child: Text(
                               '$price',
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