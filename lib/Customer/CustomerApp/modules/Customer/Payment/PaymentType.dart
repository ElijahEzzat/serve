import 'package:flutter/material.dart';

class PaymentType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF99718),
        title: Text(
          'Payment Way',
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body:
      Column(
        children:
        [
          SizedBox(
            height: 30,
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color(0xFFF99718),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  onTap: (){},
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 5,
                      ),

                      Ink.image(image: AssetImage('assets/images/VISA.png'),
                        height: 80,
                        width: 80,

                      ),
                      SizedBox(width: 25),
                      Text(
                        'VISA Cards',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFFF99718),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  onTap: (){},
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 5,
                      ),

                      Ink.image(image: AssetImage('assets/images/MasterCard.png'),
                        height: 80,
                        width: 80,

                      ),
                      SizedBox(width: 25),
                      Text(
                        'MasterCard Cards',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFFF99718),
                  width: 2,
                ),

                borderRadius: BorderRadius.circular(20),
              ),
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  onTap: (){},
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 5,
                      ),

                      Ink.image(image: AssetImage('assets/images/paypal(2).png'),
                        height: 80,
                        width: 80,

                      ),
                      SizedBox(width: 25),
                      Text(
                        'PayPal',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                      SizedBox(height: 5),
                    ],
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    )
    ;
  }
}