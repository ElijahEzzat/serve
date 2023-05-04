import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:serve_me/Provider/Screens/ProviderHomeLayout.dart';

class RateProvider extends StatefulWidget{

  @override
  State<RateProvider> createState() => _RateProviderState();
}

class _RateProviderState extends State<RateProvider> {
  var formKey = GlobalKey<FormState>();

  var reportController = TextEditingController();
  var rattingValue;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF99718),
        title: Text(
          'Rating',
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
                height: 230.0,
                color: Color(0xFFF99718),
                child: Center(
                  child: Stack(
                    children:
                    [
                      Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
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
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Provider Name',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,
                            ),
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

              Container(
                width: 300,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFFF99718),
                    width: 2,
                  ),

                  borderRadius: BorderRadius.circular(20),
                ),
                child: RatingBar.builder(
                    itemCount: 5,
                    initialRating: 0.5,
                    minRating: 0.5,
                    allowHalfRating: true,

                    itemBuilder: (context, index) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),

                    onRatingUpdate: (value){
                      rattingValue=value;
                      print(value);
                    }

                ),
              ),

              SizedBox(
                height: 15,
              ),

              Container(
                width: 380,
                height: 30,
                alignment: Alignment.centerLeft,
                child: Text(
                  'Review',
                  style: TextStyle(
                    color: Color(0xFF646464),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),

              Container(
                width: 350,
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
                      return 'Please Write your Review';
                    }
                    if(value == ' '){
                      return 'Please Write your Review';
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
                  'Submit',
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