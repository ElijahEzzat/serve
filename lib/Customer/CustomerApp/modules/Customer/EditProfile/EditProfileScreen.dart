
import 'package:flutter/material.dart';
import '../ResetPassword/ResetPasswordScreen.dart';

class EditProfile extends StatefulWidget{

  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();

}

class _EditProfileState extends State<EditProfile> {

  var selectedCity;
  var selectedDistrict;

  @override
  Widget build(BuildContext context) {
       return MaterialApp(
         debugShowCheckedModeBanner: false,
           home: Scaffold(
             appBar: AppBar(
               backgroundColor: Color(0xFFF99718),
               leading: IconButton(
                 icon: const Icon(Icons.arrow_circle_left_sharp),
                 onPressed: () => Navigator.of(context).pop(),
               ),
               title: const Text(
                 'Edit Profile',
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 30,
                 ),
               ),
               actions: [
                 Container(

                   padding: const EdgeInsets.only(
                       right: 10, left: 5, top: 5, bottom: 5),
                   child: ClipRRect(
                       borderRadius: BorderRadius.circular(20),
                       child: Image.asset('assets/images/Logo.jpg')),

                 ),
               ],
             ),
             body: SingleChildScrollView(
               child: Container(
                 color: Color(0xFFF99718),
                 padding: const EdgeInsets.only(top: 10.0),
                 child: Stack(
                   children:<Widget>[
                     Container(
                       margin: const EdgeInsets.only(top: 80.0),
                       width: MediaQuery.of(context).size.width,
                       height: MediaQuery.of(context).size.height,
                       decoration: const BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.only(
                               topLeft: Radius.circular(40),
                               topRight: Radius.circular(40),
                           ),
                       ),
                       child: Column(
                         children: <Widget>[
                             const SizedBox(height: 75.0),
                             Container(
                               padding: const EdgeInsets.only(top: 25 , left: 20 ,right: 20),
                               height: 80,
                               child: TextFormField(
                                 onTap: (){},
                                 decoration: const InputDecoration(
                                   hintText: 'Enter Your Name',
                                   hintStyle: TextStyle(
                                       fontWeight: FontWeight.bold,
                                       fontSize:20,
                                       color: Color(0xFFF99718),
                                   ),
                                   prefixIcon: Icon(
                                       Icons.person,
                                       color:Color(0xFFF99718),
                                   ),
                                   border: OutlineInputBorder(
                                     borderRadius: BorderRadius.all(Radius.circular(30.0)),

                                   ),
                                 ),
                               ),
                             ),
                             Container(
                               padding: const EdgeInsets.only(top: 25 , left: 20 ,right: 20),
                               height: 80,
                               child: TextFormField(
                                 onTap: (){},
                                 decoration: const InputDecoration(
                                   hintText: 'Enter Your Email',
                                   hintStyle: TextStyle(
                                     fontWeight: FontWeight.bold,
                                     fontSize:20,
                                     color: Color(0xFFF99718),
                                   ),
                                   prefixIcon: Icon(
                                     Icons.email_sharp,
                                     color: Color(0xFFF99718),
                                   ),
                                   border: OutlineInputBorder(
                                     borderRadius: BorderRadius.all(Radius.circular(30.0)),

                                   ),
                                 ),
                               ),
                             ),
                             Container(
                               padding: const EdgeInsets.only(top: 25 , left: 20 ,right: 20),
                               height: 80,
                               child: TextFormField(
                                 onTap: (){},
                                 decoration: const InputDecoration(
                                   hintText: 'Enter Your Phone',
                                   hintStyle: TextStyle(
                                     fontWeight: FontWeight.bold,
                                     fontSize:20,
                                     color: Color(0xFFF99718),
                                   ),
                                   prefixIcon: Icon(
                                     Icons.phone,
                                     color:Color(0xFFF99718),
                                   ),
                                   border: OutlineInputBorder(
                                     borderRadius: BorderRadius.all(Radius.circular(30.0)),

                                   ),
                                 ),
                               ),
                             ),
                             Padding(
                             padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
                             child: DropdownButtonFormField(
                               icon: const Icon(
                                 Icons.arrow_drop_down_circle,
                                 color:Color(0xFFF99718),
                               ),
                               decoration: InputDecoration(
                                 labelText: 'City',
                                 labelStyle: const TextStyle(color: Color(0xFFF99718)),
                                 prefixIcon: const Icon(
                                   Icons.location_city_outlined,
                                   color: Color(0xFFF99718),
                                 ),
                                 border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(30.0),
                                 ),
                               ),
                               items: [
                                 'Cairo',
                                 'Giza',

                               ]
                                   .map((e) => DropdownMenuItem(
                                 child: Text('$e'),
                                 value: e,
                               ))
                                   .toList(),
                               onChanged: (val) {
                                 setState(() {
                                   selectedCity = val!;
                                 });
                               },
                               value:  selectedCity,
                             ),
                           ),
                             Padding(
                        padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
                        child: DropdownButtonFormField(
                          icon: const Icon(
                            Icons.arrow_drop_down_circle,
                            color: Color(0xFFF99718),
                          ),
                          decoration: InputDecoration(
                            labelText: 'District',
                            labelStyle: const TextStyle(color: Color(0xFFF99718)),
                            prefixIcon: const Icon(
                              Icons.home,
                              color:Color(0xFFF99718),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          items: [
                            'Shobra',
                            'El Marg',
                            'El Maadi',
                            'Madint Nasr',
                            'El Moski',
                            'Helwan',
                            'El Monib',
                            'El Haram',
                            'El Warak',
                            'El Mohandeseen',
                            'Bolak',
                            'El Doki',

                          ]
                              .map((e) => DropdownMenuItem(
                                    child: Text('$e'),
                                    value: e,
                                  ))
                              .toList(),
                          onChanged: (val) {
                            setState(() {
                              selectedDistrict = val!;
                            });
                          },
                          value: selectedDistrict,
                        ),
                      ),
                             const SizedBox(height: 40),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Container(
                                   decoration: BoxDecoration(
                                     color: Color(0xFFF99718) ,
                                     borderRadius: BorderRadius.circular(20.0),
                                   ),
                                   child: MaterialButton(
                                     onPressed: (){
                                       Navigator.push(
                                         context,
                                         MaterialPageRoute(
                                             builder: (context) => const ResetPassword()),
                                       );

                                     },
                                     child: const Text(
                                       'Reset Password' ,
                                       style: TextStyle(
                                         fontSize: 25 ,
                                         fontWeight: FontWeight.bold ,
                                         color: Colors.white ,
                                       ),
                                     ),
                                   ),
                                 ),
                                 const SizedBox(width: 20),
                                 Container(
                                   decoration: BoxDecoration(
                                     color: Color(0xFFF99718) ,
                                     borderRadius: BorderRadius.circular(20.0),
                                   ),
                                   child: MaterialButton(
                                     onPressed: (){},
                                     child: const Text(
                                       'Save' ,
                                       style: TextStyle(
                                         fontSize: 25 ,
                                         fontWeight: FontWeight.bold ,
                                         color: Colors.white ,
                                       ),
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                         ],
                       ),
                     ),
                     Align(
                     alignment: Alignment.topCenter,
                     child: Stack(
                        children: <Widget>[
                           ClipOval(
                             child: Image.asset(
                               'assets/images/customer.jpg',
                               width: 150,
                               height: 150,
                               fit: BoxFit.cover,
                             ),
                           ),
                           Positioned(
                             bottom: 0,
                             right: 0,
                             child: Container(
                               padding: const EdgeInsets.all(5.0),
                               decoration: const BoxDecoration(
                                   color: Color(0xFFF99718) ,
                                   shape: BoxShape.circle,
                               ),
                               child: IconButton(
                                 onPressed: () {  },
                                 icon: const Icon(
                                    Icons.camera_alt,
                                    size: 30.0,
                                    color: Colors.white,
                                 ) ,
                               ),
                             ),
                           ),
                        ],
                     ),
                   ),
                 ]),
               ),
             ),
           )
       );
  }
}