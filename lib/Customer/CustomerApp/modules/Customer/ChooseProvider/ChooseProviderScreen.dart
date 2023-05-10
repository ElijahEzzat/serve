import 'package:flutter/material.dart';
import 'package:serve_me/Customer/CustomerApp/modules/Customer/ChooseProvider/ProviderDetails.dart';

import '../FinishBooking/FinishBookingScreen.dart';

class ChooseProvider extends StatefulWidget {
  const ChooseProvider({super.key});

  @override
  State<ChooseProvider> createState() => _ChooseProviderState();
}

class _ChooseProviderState extends State<ChooseProvider> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFF99718),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_circle_left_sharp),
            onPressed: () => Navigator.of(context).pop(),
          ),

          title: const Text(
            'Choose Your Provider',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
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
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GridView.builder(
            itemCount: 20,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: .7,
            ),
            itemBuilder: (context, index) =>
                Container(
                  decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(15.0),
                     border: Border.all(
                         color: Color(0xFFF99718),
                         width: 3 ,
                     ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                          height: 10
                      ),
                      const CircleAvatar(
                        radius: 60.0,
                        backgroundImage: AssetImage('assets/images/provider.png'),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                         'Provider Name',
                        style: TextStyle(
                           fontSize:20 ,
                           fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => ProviderDetails()));
                          },
                          child:
                            const Text(
                               'See Details',
                               style: TextStyle(
                                  fontSize: 20 ,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                               ),
                            ),

                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0xFFF99718) ,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const FinishBooking()),
                            );
                          },
                          child: const Text(
                            'Book' ,
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
                ),
          ),
        ),
      ),
    );
  }
}
