
import 'package:flutter/material.dart';
import 'package:serve_me/Customer/CustomerApp/modules/Customer/Payment/Payment.dart';
import 'package:serve_me/Customer/CustomerApp/modules/Customer/Requests/RequestsScreen.dart';
import '../../../modules/Customer/Categories/CategoriesScreen.dart';
import '../../../modules/Customer/Profile/ProfileScreen.dart';


class Home extends StatefulWidget{

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>
{
  int currentIndex = 0;


  List<Widget> screens = [
    const Categories() ,
    const Requests(),
    Payment(),
    const Profile(),
  ];

  List<String> titles =
      [
        'Choose Your Service',
        'Requests',
        'Payment',
        'My Profile',
      ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFFF99718),
          title:Text(
            titles[currentIndex],
            style: const TextStyle(
              fontWeight: FontWeight.bold ,
              fontSize: 24 ,
            ),
          ),
          actions: [
            Container(
              padding: const EdgeInsets.only(right: 10 , left: 5 ,top: 5 ,bottom: 5),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/images/Logo.jpg')),

            ),
          ],
        ) ,
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          selectedItemColor: Color(0xFFF99718),
          unselectedItemColor: Colors.grey,
          onTap: (index)
          {
            setState(()
            {
              currentIndex = index ;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.insert_invitation,
                ),
                label: 'Requests'
            ),

            BottomNavigationBarItem(
                icon: Icon(
                  Icons.money,
                ),
                label: 'Payment'
            ),

            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: 'Profile'
            ),

          ],
        ) ,
      ),
    );
  }
}



