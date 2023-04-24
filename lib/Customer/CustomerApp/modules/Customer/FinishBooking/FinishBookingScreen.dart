
import 'package:flutter/material.dart';
import 'package:serve_me/Customer/CustomerApp/layout/Customer/Home_Layout/HomeScreen.dart';


class FinishBooking extends StatefulWidget {
  const FinishBooking({super.key});

  @override
  State<FinishBooking> createState() => _FinishBookingState();
}

class _FinishBookingState extends State<FinishBooking> {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.indigo,
            leading: IconButton(
              icon: const Icon(Icons.arrow_circle_left_sharp),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: const Text(
              'Confirm Booking ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            actions: [
              Container(
                padding:
                const EdgeInsets.only(right: 10, left: 5, top: 5, bottom: 5),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('assets/images/Logo.jpg')),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Provider.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30.0) ,
                        bottomLeft: Radius.circular(30.0)),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 5),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            const Text(
                               ' Booking Date : ',
                               style: TextStyle(
                                   fontSize: 30 ,
                                   fontWeight: FontWeight.bold,
                                   color: Colors.black,
                               ),
                            ),
                            const SizedBox(height: 15),
                            Container(
                              width: 230,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.indigo ,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Row(
                                children:  const [
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Icon(
                                      Icons.date_range_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 15.0),
                                  Text(
                                    'Nov 10,2023',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25.0 ,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          const Text(
                            ' Booking Time : ',
                            style: TextStyle(
                                fontSize: 30 ,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Container(
                            width: 180,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.indigo ,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Row(
                              children:  const [
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Icon(
                                    Icons.timer,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 15.0),
                                Text(
                                  '09:00',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0 ,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            const Text(
                              ' Booking District : ',
                              style: TextStyle(
                                  fontSize: 30 ,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 15),
                            Container(
                              width: 180,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.indigo ,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Row(
                                children:  const [
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Icon(
                                      Icons.home,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 15.0),
                                  Text(
                                    'Shobra',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25.0 ,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            const Text(
                              ' Your Problem : ',
                              style: TextStyle(
                                fontSize: 30 ,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 15),
                            Container(
                              width: 180,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.indigo ,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Row(
                                children:  const [
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Icon(
                                      Icons.report_problem,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 15.0),
                                  Text(
                                    'jgjgjj',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25.0 ,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        width: 200,
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Home()),
                            );
                          },
                          child: const Text(
                            'Finish',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 7.0),
                    ],
                  ),
                ),
              ],
            ),
          ),

        )
      );
  }
}