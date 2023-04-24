import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget{

  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();

}


class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:Color(0xFFF99718),
          leading: IconButton(
            icon: const Icon(Icons.arrow_circle_left_sharp),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text(
            'Reset Password',
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
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Pass.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(top: 25 , left: 20 ,right: 20),
                height: 80,
                child: TextFormField(
                  onTap: (){},
                  decoration: const InputDecoration(
                    hintText: 'Enter Old Password',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize:20,
                      color:Color(0xFFF99718),
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
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
                    hintText: 'Enter New Password',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize:20,
                      color:Color(0xFFF99718),
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color:Color(0xFFF99718),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),

                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Container(
                width: 200,
                decoration: BoxDecoration(
                  color: Color(0xFFF99718) ,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: MaterialButton(
                  onPressed: (){},
                  child: const Text(
                    'Save' ,
                    style: TextStyle(
                      fontSize: 40 ,
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
    );
  }
}