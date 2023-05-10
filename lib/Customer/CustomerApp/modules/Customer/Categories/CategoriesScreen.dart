
import 'package:flutter/material.dart';

import '../Booking/BookingScreen.dart';

class Categories extends StatefulWidget{
  const  Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {


  @override
  Widget build(BuildContext context) {
         return Padding(
           padding: const EdgeInsets.all(28.0),
           child: SizedBox(
             width: 350,
             child: ListView(
                 scrollDirection: Axis.vertical,
                 children:  [
                   GestureDetector(
                     onTap: (){
                       Navigator.push(
                           context,
                         MaterialPageRoute(builder: (context) => const Booking()),
                         );
                     },
                     child: Stack(
                       alignment: Alignment.bottomCenter,
                       children:  [
                          ClipRRect(
                           borderRadius: BorderRadius.circular(28),
                           child: const Image(
                                image: AssetImage('assets/images/Carpenter.jpg'),
                            ),
                         ),
                         Container(
                             height: 60,
                             width: 200,
                             padding:const EdgeInsets.all(12.0) ,
                             child: Container(
                               decoration: BoxDecoration(
                                 color: Color(0xFFF99718),
                                 borderRadius: BorderRadius.circular(20)
                               ),
                               child: const Text(
                                   'Carpenter' ,
                                   textAlign: TextAlign.center,

                                   style: TextStyle(
                                      fontSize: 28.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                   ),
                               ),
                             ),
                         ),
                       ],
                     ),
                   ),
                   const SizedBox(height: 15,),
                   GestureDetector(
                     onTap: (){
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => const Booking()),
                       );
                     },
                     child: Stack(
                       alignment: Alignment.bottomCenter,
                       children:  [
                         ClipRRect(
                           borderRadius: BorderRadius.circular(28),
                           child: const Image(
                             image: AssetImage('assets/images/Blacksmith.jpg'),
                           ),
                         ),
                         Container(
                           height: 60,
                           width: 220,
                           padding:const EdgeInsets.all(12.0) ,
                           child: Container(
                             decoration: BoxDecoration(
                                 color: Color(0xFFF99718),
                                 borderRadius: BorderRadius.circular(20)
                             ),
                             child: const Text(
                               'Blacksmith' ,
                               textAlign: TextAlign.center,
                               style: TextStyle(
                                 fontSize: 30.0,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.white,
                               ),
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),

                   const SizedBox(height: 15,),
                   GestureDetector(
                     onTap: (){
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => const Booking()),
                       );
                     },
                     child: Stack(
                       alignment: Alignment.bottomCenter,
                       children:  [
                         ClipRRect(
                           borderRadius: BorderRadius.circular(28),
                           child: const Image(
                             image: AssetImage('assets/images/Cleaning.jpg'),
                           ),
                         ),
                         Container(
                           height: 60,
                           padding:const EdgeInsets.all(12.0) ,
                           width: 200,
                           child: Container(
                             decoration: BoxDecoration(
                                 color: Color(0xFFF99718),
                                 borderRadius: BorderRadius.circular(20)
                             ),
                             child: const Text(
                               'Cleaning' ,
                               textAlign: TextAlign.center,
                               style: TextStyle(
                                 fontSize: 30.0,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.white,
                               ),
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),

                   const SizedBox(height: 15,),
                   GestureDetector(
                     onTap: (){
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => const Booking()),
                       );
                     },
                     child: Stack(
                       alignment: Alignment.bottomCenter,
                       children:  [
                         ClipRRect(
                           borderRadius: BorderRadius.circular(28),
                           child: const Image(
                             image: AssetImage('assets/images/Electricity.jpg'),
                           ),
                         ),
                         Container(
                           height: 60,
                           padding:const EdgeInsets.all(12.0) ,
                           width: 200,
                           child: Container(
                             decoration: BoxDecoration(
                                 color: Color(0xFFF99718),
                                 borderRadius: BorderRadius.circular(20)
                             ),
                             child: const Text(
                               'Electricity' ,
                               textAlign: TextAlign.center,
                               style: TextStyle(
                                 fontSize: 30.0,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.white,
                               ),
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),

                   const SizedBox(height: 15,),
                   GestureDetector(
                     onTap: (){
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => const Booking()),
                       );
                     },
                     child: Stack(
                       alignment: Alignment.bottomCenter,
                       children:  [
                         ClipRRect(
                           borderRadius: BorderRadius.circular(28),
                           child: const Image(
                             image: AssetImage('assets/images/Plumbing.jpg'),
                           ),
                         ),
                         Container(
                           height:60,
                           padding:const EdgeInsets.all(12.0) ,
                           width: 200,
                           child: Container(
                             decoration: BoxDecoration(
                                 color: Color(0xFFF99718),
                                 borderRadius: BorderRadius.circular(20)
                             ),
                             child: const Text(
                               'Plumbing' ,
                               textAlign: TextAlign.center,
                               style: TextStyle(
                                 fontSize: 30.0,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.white,
                               ),
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),

                   const SizedBox(height: 15,),
                   GestureDetector(
                     onTap: (){
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => const Booking()),
                       );
                     },
                     child: Stack(
                       alignment: Alignment.bottomCenter,
                       children:  [
                         ClipRRect(
                           borderRadius: BorderRadius.circular(28),
                           child: const Image(
                             image: AssetImage('assets/images/Painting.jpg'),
                           ),
                         ),
                         Container(
                           height: 60,
                           padding:const EdgeInsets.all(12.0) ,
                           width: 200,
                           child: Container(
                             decoration: BoxDecoration(
                                 color: Color(0xFFF99718),
                                 borderRadius: BorderRadius.circular(20)
                             ),
                             child: const Text(
                               'Painting' ,
                               textAlign: TextAlign.center,
                               style: TextStyle(
                                 fontSize: 30.0,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.white,
                               ),
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                 ],
             ),
           ),
         );
  }

}