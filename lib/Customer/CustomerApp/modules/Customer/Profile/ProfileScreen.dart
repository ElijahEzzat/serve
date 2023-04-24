
import 'package:flutter/material.dart';
import '../EditProfile/EditProfileScreen.dart';

class Profile extends StatefulWidget{
  const  Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
       return Column(
            children: [
                Container(
                  decoration: const BoxDecoration(
                    color:Color(0xFFF99718),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30.0) ,
                        bottomLeft: Radius.circular(30.0)),
                  ),
                  width: double.infinity,
                  height: 210,
                  //color: Colors.indigo,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Column(
                       children: const [
                         CircleAvatar(
                           radius: 60.0,
                           backgroundImage: AssetImage('assets/images/Tawfik.jpg'),
                         ),
                         SizedBox(height: 10),
                         Text(
                           'Tawfik Wageh' ,
                           style: TextStyle(
                             fontWeight: FontWeight.bold ,
                             fontSize: 38.0 ,
                             color: Colors.white,
                           ),
                         ),
                       ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                   decoration: BoxDecoration(
                      color: Color(0xFFF99718),
                      borderRadius: BorderRadius.circular(20.0),
                   ),
                   margin: const EdgeInsets.all(20.0),
                   padding: const EdgeInsets.all(10.0),
                   child: Row(
                      children:  const [
                         Icon(
                             Icons.phone,
                             color: Colors.white,
                         ),
                         SizedBox(width: 15.0),
                         Text(
                             '01254486317',
                             style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.0 ,
                                  fontWeight: FontWeight.bold,
                             ),
                         ),
                      ],
                   ),
                ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF99718),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                margin: const EdgeInsets.all(20.0),
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.location_city_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      'Cairo',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0 ,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color:Color(0xFFF99718),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                margin: const EdgeInsets.all(20.0),
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.house_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      'Shobra ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0 ,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color:Color(0xFFF99718),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: MaterialButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EditProfile()),
                        );
                      },
                      child: const Text(
                        'Update' ,
                        style: TextStyle(
                          fontSize: 30 ,
                          fontWeight: FontWeight.bold ,
                          color: Colors.white ,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    decoration: BoxDecoration(
                      color:Color(0xFFF99718),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: MaterialButton(
                      onPressed: (){},
                      child: const Text(
                        'Log Out' ,
                        style: TextStyle(
                          fontSize: 30 ,
                          fontWeight: FontWeight.bold ,
                          color: Colors.white ,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
       );
  }
}