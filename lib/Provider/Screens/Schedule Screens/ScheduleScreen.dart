import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:serve_me/Provider/Screens/Schedule%20Screens/ScheduledRequestDetails.dart';

class ScheduleScreen extends StatefulWidget{
  @override
  State<ScheduleScreen> createState() => _ScheduleScreen();
}

class _ScheduleScreen extends State<ScheduleScreen> {
  //functions for date Picker & time picker
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _dateController;
  late TextEditingController _timeController;


  @override
  void initState() {
    super.initState();
    _dateController = TextEditingController(
      text: DateFormat('yyyy-MM-dd').format(DateTime.now()),
    );

    _timeController = TextEditingController(
      text: DateFormat('h:mm a').format(DateTime.now()),
    );
  }

  @override
  void dispose() {
    _dateController.dispose();
    _timeController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, i) {
        return
          Column(
            children: [
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 290.0,
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFF99718),
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),

                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          CircleAvatar(
                            radius: 35.5,
                            backgroundColor: Color(0xFFF99718),
                            child: CircleAvatar(
                              radius: 33.0,
                              backgroundImage: AssetImage('assets/images/customer.jpg'),
                              //foregroundImage: _image == null ? null : FileImage(_image!),
                            ),
                          ),

                          SizedBox(
                            width: 5.0,
                          ),

                          Container(
                            padding: EdgeInsets.all(5.0),
                            width: 180.0,
                            child: Text(
                              'Customer Name',
                              style: TextStyle(
                                color: Color(0xFFF99718),
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFF99718),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),

                            onPressed: (){

                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => ScheduledRequestDetails()));
                            },

                            child: const Text(
                              'Details',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 10.0,
                      ),

                      Container(
                        height: 80.0,
                        width: 350.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFF99718),
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text(
                          'Problem description',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black45,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 10.0,
                      ),

                      Row(
                        children: [
                          Text(
                            '   Date ',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black45,
                            ),
                          ),
                          Container(
                            height: 40.0,
                            width: 130.0,
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFF99718),
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Text(
                              'date of service',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black45,
                              ),
                            ),
                          ),

                          Text(
                            '  Time  ',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black45,
                            ),
                          ),
                          Container(
                            height: 40.0,
                            width: 125.0,
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFF99718),
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Text(
                              'Time of service',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black45,
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 8.0,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF1DBD1D),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),


                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Form(
                                      key: _formKey,
                                      child: AlertDialog(
                                        title: Text('Cost Of Service'),
                                        content:
                                        SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              Column(
                                                children: [
                                                  TextFormField(
                                                    decoration: const InputDecoration(
                                                      labelText: 'Problem Title',
                                                      labelStyle: TextStyle(color: Colors.grey),
                                                      prefixIcon: Icon(Icons.title, color: Color(0xFFF99718),),

                                                      enabledBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                                                          borderRadius: BorderRadius.all(Radius.circular(30))
                                                      ),

                                                      focusedBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                                                          borderRadius: BorderRadius.all(Radius.circular(30))
                                                      ),

                                                      errorBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(color: Color(0xFFFF0000), width: 2),
                                                          borderRadius: BorderRadius.all(Radius.circular(30))
                                                      ),

                                                      focusedErrorBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(color: Color(0xFFFF0000), width: 2),
                                                          borderRadius: BorderRadius.all(Radius.circular(30))
                                                      ),

                                                    ),
                                                    //controller: nameController,
                                                    keyboardType: TextInputType.text,

                                                    onFieldSubmitted: (problemTitle){
                                                      print(problemTitle);
                                                    },

                                                    onChanged: (String problemTitle){
                                                      print(problemTitle);
                                                    },


                                                    validator: (value){
                                                      if(value!.isEmpty){
                                                        return 'Please Write Problem Title';
                                                      }
                                                      if(value == ' '){
                                                        return 'Please Write Problem Title';
                                                      }
                                                      if(!RegExp("^[a-zA-Z]").hasMatch(value)){
                                                        return 'Please enter valid Title';
                                                      }
                                                      return null;
                                                    },

                                                  ),

                                                  SizedBox(
                                                    height: 10.0,
                                                  ),

                                                  TextFormField(
                                                    decoration: InputDecoration(
                                                      labelText: 'Date',
                                                      labelStyle: TextStyle(color: Colors.grey),
                                                      prefixIcon: Icon(
                                                        Icons.date_range,
                                                        color: Color(0xFFF99718),),
                                                      enabledBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                                                          borderRadius: BorderRadius.all(Radius.circular(30))
                                                      ),

                                                      focusedBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                                                          borderRadius: BorderRadius.all(Radius.circular(30))
                                                      ),

                                                      errorBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(color: Color(0xFFFF0000), width: 2),
                                                          borderRadius: BorderRadius.all(Radius.circular(30))
                                                      ),

                                                      focusedErrorBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(color: Color(0xFFFF0000), width: 2),
                                                          borderRadius: BorderRadius.all(Radius.circular(30))
                                                      ),
                                                    ),
                                                    controller: _dateController,
                                                    onTap: () async {
                                                      final DateTime? picked = await showDatePicker(
                                                        context: context,
                                                        initialDate: DateTime.now(),
                                                        firstDate: DateTime(1900),
                                                        lastDate: DateTime.now(),
                                                      );
                                                      if (picked != null) {
                                                        _dateController.text = DateFormat('yyyy-MM-dd').format(picked);
                                                      }
                                                    },
                                                    validator: (value) {
                                                      if (value == null || value.isEmpty) {
                                                        return 'Please enter a date.';
                                                      }
                                                      return null;
                                                    },
                                                  ),

                                                  SizedBox(
                                                    height: 10,
                                                  ),

                                                  TextFormField(
                                                    decoration: InputDecoration(
                                                      labelText: 'Time',
                                                      labelStyle: TextStyle(color: Colors.grey),
                                                      prefixIcon: Icon(
                                                        Icons.timer_outlined,
                                                        color: Color(0xFFF99718),
                                                      ),
                                                      enabledBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                                                          borderRadius: BorderRadius.all(Radius.circular(30))
                                                      ),

                                                      focusedBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                                                          borderRadius: BorderRadius.all(Radius.circular(30))
                                                      ),

                                                      errorBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(color: Color(0xFFFF0000), width: 2),
                                                          borderRadius: BorderRadius.all(Radius.circular(30))
                                                      ),

                                                      focusedErrorBorder: OutlineInputBorder(
                                                          borderSide: BorderSide(color: Color(0xFFFF0000), width: 2),
                                                          borderRadius: BorderRadius.all(Radius.circular(30))
                                                      ),
                                                    ),
                                                    controller: _timeController,
                                                    onTap: () async {
                                                      final TimeOfDay? picked = await showTimePicker(
                                                        context: context,
                                                        initialTime: TimeOfDay.now(),
                                                      );
                                                      if (picked != null) {
                                                        _timeController.text = DateFormat('h:mm a').format(
                                                          DateTime(DateTime.now().year, DateTime.now().month,
                                                              DateTime.now().day, picked.hour, picked.minute),
                                                        );
                                                      }
                                                    },
                                                    validator: (value) {
                                                      if (value == null || value.isEmpty) {
                                                        return 'Please enter a time.';
                                                      }
                                                      return null;
                                                    },
                                                  ),

                                                  SizedBox(
                                                    height: 10,
                                                  ),

                                                  TextFormField(
                                                    decoration: const InputDecoration(
                                                      labelText: 'Cost Of Service',
                                                      labelStyle: TextStyle(color: Colors.grey),
                                                      prefixIcon: Icon(Icons.money, color: Color(0xFFF99718),),

                                                      enabledBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                                                        borderRadius: BorderRadius.all(Radius.circular(30))
                                                      ),

                                                      focusedBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(color: Color(0xFFF99718), width: 2),
                                                        borderRadius: BorderRadius.all(Radius.circular(30))
                                                      ),

                                                      errorBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(color: Color(0xFFFF0000), width: 2),
                                                        borderRadius: BorderRadius.all(Radius.circular(30))
                                                      ),

                                                      focusedErrorBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(color: Color(0xFFFF0000), width: 2),
                                                        borderRadius: BorderRadius.all(Radius.circular(30))
                                                      ),

                                                    ),
                                                    //controller: nameController,
                                                    keyboardType: TextInputType.number,

                                                    onFieldSubmitted: (cost){
                                                      print(cost);
                                                    },

                                                    onChanged: (String cost){
                                                      print(cost);
                                                    },


                                                    validator: (value){
                                                      if(value!.isEmpty){
                                                        return 'Please enter cost';
                                                      }
                                                      if(value == ' '){
                                                        return 'Please enter cost';
                                                      }
                                                      if(!RegExp("^[0-9]").hasMatch(value)){
                                                        return 'Please enter valid cost';
                                                      }
                                                      return null;
                                                    },

                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: Color(0xFFF99718),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(20.0),
                                                  ),
                                                ),

                                                child: Text(
                                                  'Send',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                  ),
                                                ),
                                                onPressed: () {
                                                  if (_formKey.currentState!.validate()){
                                                    Navigator.of(context).pop();
                                                  }
                                                },
                                              ),
                                            ],

                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );

                              /*Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => ProviderHomeLayout()));*/
                            },

                            child: const Text(
                              'Finish',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50.0,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFF85E2F),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),

                            onPressed: (){

                              /*Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => ProviderHomeLayout()));*/
                            },

                            child: const Text(
                              'Cancel',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
      },

    );
  }
}