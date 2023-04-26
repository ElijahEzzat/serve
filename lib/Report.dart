import 'package:flutter/material.dart';
import 'package:serve_me/Customer/CustomerApp/layout/Customer/Home_Layout/HomeScreen.dart';
import 'package:serve_me/Provider/Screens/ProviderHomeLayout.dart';

class ReportCustomer extends StatefulWidget{

  @override
  State<ReportCustomer> createState() => _ReportCustomerState();
}

class _ReportCustomerState extends State<ReportCustomer> {
  var formKey = GlobalKey<FormState>();

  var reportController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF99718),
        title: Text(
          'Report',
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
      ),

      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200.0,
                color: Color(0xFFF99718),
                child: Center(
                  child: Stack(
                    children:
                    [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 80.0,
                            backgroundColor: Color(0xFFF99718),
                            backgroundImage: AssetImage('assets/images/provider.png'),
                            //foregroundImage: _image == null ? null : FileImage(_image!),
                          ),
                        ],
                      ),
                    ],

                  ),
                ),
              ),

              SizedBox(
                height: 50.0,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextFormField(
                  maxLines: 10,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),


                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                      borderRadius:
                      BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        topLeft: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                      borderRadius:
                      BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        topLeft: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                    ),

                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFF0000), width: 2),
                      borderRadius:
                      BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        topLeft: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                    ),

                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFF0000), width: 2),
                      borderRadius:
                      BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        topLeft: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                    ),

                  ),
                  //controller: nameController,
                  keyboardType: TextInputType.text,

                  onFieldSubmitted: (name){
                    print(name);
                  },

                  onChanged: (String value){
                    print(value);
                  },

                  onSaved: (_name){
                    //name = _name;
                  },

                  validator: (value){
                    if(value!.isEmpty){
                      return 'Please Write your Report';
                    }
                    if(value == ' '){
                      return 'Please Write your Report';
                    }
                    return null;
                  },

                ),
              ),

              SizedBox(
                height: 20,
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFF99718),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),

                onPressed: (){
                  if(formKey.currentState!.validate()) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProviderHomeLayout()));
                  }
                },

                child: const Text(
                  'Send Report',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
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