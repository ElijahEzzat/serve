import 'package:flutter/material.dart';
import 'package:serve_me/Provider/Screens/HistoryScreens/History.dart';
import 'package:serve_me/Provider/Screens/ProfileScreens/ProfileScreen.dart';
import 'package:serve_me/Provider/Screens/Requests Screens/RequestsScreen.dart';
import 'package:serve_me/Provider/Screens/Reviews Screens/ReviewScreen.dart';
import 'package:serve_me/Provider/Screens/Schedule Screens/ScheduleScreen.dart';
import 'package:serve_me/Provider/Screens/PaymentNotification.dart';

class ProviderHomeLayout extends StatefulWidget{
  @override
  State<ProviderHomeLayout> createState() => _ProviderHomeLayoutState();
}

class _ProviderHomeLayoutState extends State<ProviderHomeLayout> {

  List<Widget> screens = [
    RequestsScreen(),
    ScheduleScreen(),
    ReviewScreen(),
    PaymentNotification(),
    ProfileScreen()
  ];
  List<String> screenLable = [
    'Requests',
    'Scheduled Requests',
    'Reviews',
    'Payment Notifications',
    'Profile'];
  int currentIndex =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF99718),
        title: Text(
          screenLable[currentIndex],
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HistoryScreen()));
              },

              icon: Icon(
                Icons.history,
                color: Color(0xFFFFFFFF),
              ),
          )
        ],
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.article_outlined,
              ),
            label: 'Requests'
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_month,
              ),
              label: 'Scheduled',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.rate_review_outlined,
            ),
            label: 'Reviews',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.money,
            ),
            label: 'Payment',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
            ),
            label: 'Profile',
          ),
        ],

        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },

        currentIndex: currentIndex,
        selectedItemColor: Color(0xFFF99718),
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}