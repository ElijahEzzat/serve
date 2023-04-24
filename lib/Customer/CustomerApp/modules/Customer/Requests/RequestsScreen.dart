import 'package:flutter/material.dart';

class Requests extends StatefulWidget{
  const  Requests({super.key});

  @override
  State<Requests> createState() => _RequestsState();
}

class _RequestsState extends State<Requests> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) =>
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                      color: Colors.indigo,
                      width: 3 ,
                    ),
                  ),
                   child: Row(
                      children: [
                        GestureDetector(
                           onTap: (){},
                           child: Column(
                              children: const [
                                SizedBox(
                                    height: 10
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15.0),
                                  child: CircleAvatar(
                                    radius: 50.0,
                                    backgroundImage: AssetImage('assets/images/Tifa.jpg'),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Padding(
                                  padding:EdgeInsets.only(left: 15),
                                  child: Text(
                                    'Tifa Wageh',
                                    style: TextStyle(
                                      fontSize:20 ,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ],
                           ),
                         ),
                        const SizedBox(width: 15),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               Row(
                                  children: const [
                                    Text(
                                      'Nov 10,2023',
                                      style: TextStyle(
                                        fontSize:20 ,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width:5 ),
                                    Text(
                                      'at',
                                      style: TextStyle(
                                        fontSize:20 ,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width:5 ),
                                    Text(
                                      '09:00',
                                      style: TextStyle(
                                        fontSize:20 ,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),

                                  ],
                               ),
                              const SizedBox(height: 10),
                              Row(
                                 children: [
                                   Container(
                                     height: 35,
                                     width: 100,
                                     decoration: BoxDecoration(
                                       color: Colors.yellow ,
                                       borderRadius: BorderRadius.circular(20.0),
                                     ),
                                     child: const Padding(
                                       padding: EdgeInsets.only(top: 7),
                                       child: Text(
                                            'Pending',
                                             style: TextStyle(
                                                 color: Colors.white,
                                                 fontWeight: FontWeight.bold,
                                                 fontSize: 23,
                                             ),
                                             textAlign: TextAlign.center,
                                       ),
                                     ),
                                   ),
                                   const SizedBox(width:10 ),
                                   Container(
                                     height: 35,
                                     decoration: BoxDecoration(
                                       color: Colors.indigoAccent ,
                                       borderRadius: BorderRadius.circular(20.0),
                                     ),
                                     child: MaterialButton(
                                       onPressed: (){},
                                       child: const Text(
                                         'Cancel' ,
                                         style: TextStyle(
                                           fontSize: 20 ,
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
                      ],
                   ),
                ),
              )
      ),
    );
  }
}